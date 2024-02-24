# Provisioners

* We have so far created, modified and destroyed infrastructure with terraform. But what if we want to provision it as well?
* We can do that with the help of provisioners.
* Provisioners are used to execute scripts on a local or remote machine as part of resource creation or destruction.

Terraform provisioners have nothing in common with providers, they allow the execution of various commands or scripts on either local or remote machines, and they can also transfer files from a local environment to a remote one. 

There are three available provisioners:
1. **file** (used for copying)
2. **local-exec** (used for local operations)
3. **remote-exec** (used for remote operations).
   
*The file and remote-exec provisioners need a connection block to be able to do the remote operations.*

![image](https://github.com/begh-azka/terraform_aws/assets/97597065/5c8ee080-3587-4bcb-ba86-31a98b52dfea)

## Local-Exec Provisioner
The local-exec provisioner allows executing commands locally on the machine running Terraform. It is commonly used for tasks that don’t require remote access, like running scripts or initializing resources. This provisioner provides flexibility and can be integrated with various scripting languages.

## Remote-Exec Provisioner
The remote-exec provisioner runs commands remotely on the created resource. It establishes an SSH or WinRM connection to the resource and executes the specified commands. This provisioner is suitable for tasks that require remote execution, such as configuring software or managing the infrastructure.

### Destroy Time Provisioner
If when=destroy is specified, the provisioner will run when the resource it is defined within, is destroyed.
