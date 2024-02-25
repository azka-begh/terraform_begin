# Terraform Backend
### Challenges with storing state files on local

- Nowadays, Terraform project is handled and collaborated on by an entire team. Storing the state file in the local laptop will not allow collaboration.
- So, there is a need of centralizing it. It is done in the following ways:
   1. The terraform code is stored in a git repository.
   2. The state file is stored in a central backend.

![image](https://github.com/begh-azka/terraform_aws/assets/97597065/979ce919-dec6-4ff4-a7d2-0ebee255fd74)

- **Terraform Backend** is a configuration option in Terraform that allows you to store and manage the state of your infrastructure in a remote or local location.
- The backend is responsible for storing the state file and providing an interface for reading and writing state data.
- When you run Terraform, it checks the backend to see if there are any changes to the state file, and if there are, it applies those changes to your infrastructure.
Types:
  1. **Local Backend:** A local backend stores the state file on the machine where Terraform is running. By default, Terraform implicitly uses a backend called local to store state as a local file on disk `terraform.tfstate`.
  2. **Remote Backend:** A remote backend stores the state file in a centralized location, such as a cloud object storage service or a database. Remote backends provide several benefits, such as enabling collaboration between team members, versioning state files, and providing a history of changes. There are several remote backend providers available, such as Amazon S3, Azure Storage, Google Cloud Storage, and HashiCorp Consul.
  
- Backends supported in Terraform are: S3, Consul, Azurerm, Kubernetes, HTTP, ETCD, artifactory.
- Accessing state in a remote service generally requires some kind of access credentials.
- Some backends act like plain "remote disks" for state files; **others support locking the state while operations are being performed, which helps prevent conflicts and inconsistencies**.

## State Lock
- Whenever you are performing an operation, *`terraform will lock the state file`*.
- This is very important as during your ongoing `terraform apply` operation, if others also try the same, it can corrupt the state file.
- Terraform acquires a state lock to protect the state from being written by multiple users at the same time.
  
**How does terraform know an operating is going on?**
- While we run terraform apply or destroy on local backend, a file called **`.terraform.tfstate.lock.info`** is created.
- This file disappears as soon as the operation is completed.
- Same file needs to get created in remote backend everytime an operation is in progress. So, before using any remote backend, we should make sure it supoorts state locking.

# State Locking in Remote Backends

## State Locking in S3:
- By default, **S3 does not support State Lock Functionality**.
- You need to make use of `DynamoDB` table to achieve state locking functionality.


### DynamoDB:
- DynamoDB only runs on Amazon Web Services (AWS).
- DynamoDB is NoSQL, it does not support ANSI Structured Query Language (SQL). Instead, it uses a proprietary API based on JavaScript Object Notation (JSON). 

[DynamoDB](https://www.dynamodbguide.com/what-is-dynamo-db/)

### DynamoDB State Locking:
- **dynamodb_table:** Name of DynamoDB Table to use for state locking and inconsistency. The table must have a partition key named LockID with type of String. If not configured, state locking will be disabled.

### Steps to create DynamoDB and integrate it with S3:
1. Create a DynamoDB table, give it a name (terraform-state-locking) and set its partition key to LockID with type String.
2. In your backend config file, write:
```sh
  terraform {
   backend "s3" {
    bucket = "bucket-name"
    key    = "backend/dynamodb-demo.tfstate"
    region = "us-east-2"
    dynamodb_table = "terraform-state-locking"
  }
}
```
3. Create a resource config file
```sh
resource "time_sleep" "name" {
  create_duration = "150s"
}
```
5. Do a `terraform init` and run `terraform apply`. This will print the following message in the beginning.
```sh
Acquiring state lock. This may take a few moments...
```
6. While this is running, run terraform plan in a separate terminal. This will throw an error, which shows that state lock with DynamoDB and S3 is working.
```sh
Error: Error acquiring the state lock
```
