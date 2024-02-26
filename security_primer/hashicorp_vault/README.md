# Terraform and HashiCorp Vault Integration

## HashiCorp Vault
- `HashiCorp Vault` allows organizations to securely store secrets like tokens, passwords, certificates along with access management for protecting secrets.
- One of the common challenge nowadays in organizations is "Secrets Management".
- Secrets can include database password, AWS access/secret keys, API tokens, encryption keys and others.

## Dynamic Credentials
- HashiCorp Vault comes with search engine feature. Here you can search for the platform to which you need to login e.g., aws.
- Users can generate passwords or access and secret keys using the vault which will only be valid for 24 hours.
- After that, users will have to generate the keys/password/tokens again.
- This regular password rotation helps prevent security breach.

```sh
vault write ssh/creds/otp_key_role ip=a.b.c.d
```

## Features
- Encryption: With vault, you can encrypt data and at a later stage decrypt it.

## Vault Provider
- The Vault Provider allows Terraform to read, write and configure HashiCorp Vault.

```sh
provider "vault" {
  address = "http://ip:port"
}
data "vault_generic_secret" "demo" {
  path = "secrets/my_creds"
}
output "vault_sec" {
  value     = data.vault_generic_secret.demo.data_json
  sensitive = "true"
}
```
