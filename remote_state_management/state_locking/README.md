# State Locking in Remote Backends

## State Locking in S3:
- By default, **S3 does not support State Lock Functionality**.
- You need to make use of `DynamoDB` table to achieve state locking functionality.


### DynamoDB:
- DynamoDB is cloud-native, it does not run on-premises or even in a hybrid cloud; it only runs on Amazon Web Services (AWS).
- DynamoDB is NoSQL, it does not support ANSI Structured Query Language (SQL). Instead, it uses a proprietary API based on JavaScript Object Notation (JSON). 
- DynamoDB is primarily a key-value store in the sense that its data model consists of key-value pairs in a schemaless, very large, non-relational table of rows (records). 

[DynamoDB](https://www.scylladb.com/learn/dynamodb/introduction-to-dynamodb/)

### DynamoDB State Locking:
- **dynamodb_endpoint:** Custom endpoint for teh AWS DynamoDB API.
- **dynamodb_table:** Name of DynamoDB Table to use for state locking and inconsistency. The table must have a partition key named LockID with type of String. If not configured, state locking will be disabled.

Steps to create DynamoDB and integrate it with S3:
1. Create a DynamoDB table, give it a name (terraform-state-locking) and set its partition key to LockID with type String.
2. In your backend config file, write:
```sh
  terraform {
   backend "s3" {
    bucket = "kops-s3-k8s-bucket"
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
5. Do a `terraform init` and run `terraform apply`. This will print teh following message in the beginning.
```sh
Acquiring state lock. This may take a few moments...
```
6. While this is running, run terraform plan in a separate terminal. This will throw an error, which shows that state lock with DynamoDB and S3 is working.
```sh
Error: Error acquiring the state lock
```
