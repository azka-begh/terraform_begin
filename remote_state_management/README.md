# Remote State Management

## Module Sources
- The source argument in a module block tells Terraform where to find the source code for the desired child module.
- Terraform uses this during the module installation step of `terraform init` to download the source code to a directory on local disk so that it can be used by other terraform commands.
- Module installer supports installation from a number of different source types, as listed below:
    - Local paths
    - Terraform Registry
    - GitHub, BitBucket
    - Generic Git, Mercurial repos
    - HTTP URLs
    - S3 Buckets
    - GCS Buckets
```sh
module "consul" {
  source  = "app.terraform.io/example-corp/k8s-cluster/azurerm"
  version = "1.1.0"
}
```

### Local Path: 
A local path must begin with either ./ or ../ to indicate a local path is intended.
```sh
module "consul" {
  source = "../local"
}
```

### Git and GitHub:
- Arbitrary git repositories can be used by prefixing the address with the special `git::` prefix.
- After this prefix, any valid Git URL can be specified to select one of the protocols supported by git.
```sh
module "vpc" {
  source = "git::https://github.com/zealvora/tmp-repo.git
}
module "storage" {
  source = "git::ssh://username@github.com/storage.git"
}
```
- However, Terraform will recognize unprefixed `github.com` URLs and interpret them automatically as git repository sources.
```sh
module "consul" {
  source = "github.com/zealvora/tmp-repo.git"
}
```

### Referencing a Branch in a Module Source
- By deafult, Terraform will clone and use the default branch (referenced by HEAD) in the selected repository.
- You can override this using teh ref argument.
  ```sh
  module "vpc" {
    source = "git::https://github.com/zealvora/tmp-repo.git?ref=development"
  }
- The value of the ref argument can be any reference that would be accepted by the git checkout command, including branch and tag names.

### Bitbucket
- Terraform will recognize unprefixed `bitbucket.org` URLs and interpret them automatically as BitBucket repositories. (Only for public repos)
