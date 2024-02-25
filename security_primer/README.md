# Security Primer

## Provider Configuration

### Single Provider - Multiple Configuration:
- Till now, we have been hardcoding the aws region parameter within the providers.tf
- This means that resources would be created in the region specified in the providers.tf

```sh
provider "aws" {
  region = "us-east-2"
}

provider "aws" {
  alias  = "mumbai"
  region = "ap-south-1"
}
```
