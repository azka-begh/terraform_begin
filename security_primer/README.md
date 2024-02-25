# Security Primer

## Single Provider - Multiple Configuration:
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

## Handling Multiples AWS Profiles with terraform Providers
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

## Sensitive Parameter

- With organizations managing their entire infrastructure with terraform, it is likely that you will see some sensitive information embedded in the code.
- When working with a field that contains information likely to be considered sensitive, it is best to set the sensitive property in its schema to true.
- Setting the sensitive to "true" will prevent the field's values from printing in CLI output and in Terraform cloud
- However, it will not encrypt or obscure the value in the state file.
