# Modules

* A Terraform module is a collection of standard configuration files in a dedicated directory. 
* Terraform modules encapsulate groups of resources dedicated to one task, reducing the amount of code you have to develop for similar infrastructure components.
```
A typical module can look like this:
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

## Challenges with Modules
   * One common need of infrastructure management is to build environments like staging, production etc with similar setup but keeping environment variables different.
   *  When we use modules directly, the resources will be replicas of code in the modules.
   *  Variables can help with this.

## Using Variables in Modules
   * To make modules flexible, variables can be used. In the root module, a variable file can be maintained.
   * But this is not a safe approach. As users in the child modules can assign a value to these variables and override the default values specfied in the root modules.
   * To overcome this, instead of using variables, **locals are recommended**. These locals make modules flexible and at the same time cannot be overridden by users in child modules.
