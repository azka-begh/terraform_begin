# Modules

- A Terraform module is a collection of standard configuration files in a dedicated directory. 
- Terraform modules encapsulate groups of resources dedicated to one task, reducing the amount of code you have to develop for similar infrastructure components.
- It is recommended to explicitly constraint the acceptable version numbers for each external module to avoid unexpected or unwanted changes.
- Version constraints are supported only for modules installed from a module rregistry, such as the Terraform registry or Terraform Cloud;s private module registry.
- Syntax for public terraform registry: `Namespace/Name/Provider`
```sh
module "consul" {
  source = "hashicorp/consul/aws"
  version = "0.1.0"
}
```
- A typical module can look like this:
```sh
.
├── main.tf
├── outputs.tf
├── README.md
└── variables.tf
```

```From the official documentation:```
 * A module is a container for multiple resources that are used together.

 * Every Terraform configuration has at least one module, known as its root module, which consists of the resources defined in the .tf files in the main working directory.

 * A module can call other modules, which lets you include the child module's resources into the configuration in a concise way. Modules can also be called multiple times, either within the same configuration or in separate configurations, allowing resource configurations to be packaged and re-used.

## Private Registry for Module Sources
- You can also use modules from private registry, like the one provided by terraform Cloud.
- private registry modules have source strings in the following form:
  `HOSTNAME/NAMESPACE/NAME/PROVIDER`
- This is the same format as the public registry, but with an added hostname prefix.
- While fetching a module, having a version is required:

## Challenges with Modules
   * One common need of infrastructure management is to build environments like staging, production etc with similar setup but keeping environment variables different.
   *  When we use modules directly, the resources will be replicas of code in the modules.
   *  Variables can help with this.

## Using Variables in Modules
   * To make modules flexible, variables can be used. In the root module, a variable file can be maintained.
   * But this is not a safe approach. As users in the child modules can assign a value to these variables and override the default values specfied in the root modules.
   * To overcome this, instead of using variables, **locals are recommended**. These locals make modules flexible and at the same time cannot be overridden by users in child modules.

## Accessing Outputs in Child Module
  * In a parent module, if an output has been declared then, this output value can be accessed in the child module configuration files as ```module.module_name.output_name```

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
