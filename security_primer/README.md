# Security Primer

## Provider Configuration

### Single Provider - Multiple Configuration:
- Till now, we have been hardcoding the aws region parameter within the providers.tf
- This means that resources would be created in the region specified in the providers.tf
- We can have multiple regions in our provider.tf file if we set an alias for the second provider.

```sh
provider "aws" {
  region = "us-east-2"
}

provider "aws" {
  alias  = "mumbai"
  region = "ap-south-1"
}
```

### Handling Multiples AWS Profiles with terraform Providers
We have seen how we run terraform using one aws account, but what if we have multple aws accounts?

- We can configure a second user in ~/.aws/credentials
```sh
[default]
aws_secret_key_id     = SECRET-KEY
aws_secret_access_key = ACCESS-KEY

[aws_user2]
aws_secret_key_id     = SECRET-KEY
aws_secret_access_key = ACCESS-KEY
```
