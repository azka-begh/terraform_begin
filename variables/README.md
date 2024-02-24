# Terraform Variables

[Terraform Variables](https://spacelift.io/blog/how-to-use-terraform-variables)

## Types of Variables

**1. Local Variables:**
- Local variables are declared using the locals block.
- It is a group of key-value pairs that can be used in the configuration.
- The values can be hard-coded or be a reference to another variable or resource.
- Local variables are accessible within the module/configuration where they are declared.

**2. Input Variables:**
- Terraform input variables are used to pass certain values from outside of the configuration or module.
- They are used to assign dynamic values to resource attributes.
- The difference between local and input variables is that input variables allow you to pass values before the code execution.
- Additionally, it is also possible to set certain attributes while declaring input variables, as below:
  
1. **type** — to identify the type of the variable being declared.
2. **default** — default value in case the value is not provided explicitly.
3. **description** — a description of the variable. This description is also used to generate documentation for the module.
4. **validation** — to define validation rules.
5. **sensitive** — a boolean value. If true, Terraform masks the variable’s value anywhere it displays the variable.

**3. Output Variables:**
- Output variables in Terraform are used to display the required information in the console output after a successful application of configuration for the root module. 

## Passing Variables

* CLI Flag
```sh
terraform plan -var "variable_name=variable_value"
```
* Variables from custom files
```sh
terraform plan -var-file="file-name.tfvars"
```
* Env Variables:
```sh
1. setx TF_VAR_variable_name variable_value (Windows)
2. export TF_VAR_variable_name="variable_value" (Linux/Mac)
```
