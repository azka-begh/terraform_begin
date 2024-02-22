# Dynamic Blocks in Terraform

[Dynamic Blocks](https://kodekloud.com/blog/terraform-dynamic-block/)


Some top-level block types, like the resource block, have arguments in the form of name = expression and also have nested blocks as arguments. Terraform dynamic blocks are commonly used to dynamically construct these repeated nested block arguments in resource-type blocks.
Dynamic blocks in Terraform are commonly used in the resource block. They are also supported inside the data, provider, and provisioner blocks. They should not be overused as they will make your Terraform configuration hard to read and maintain.
```
resource "resource_type" "resource_name" {
  # body of the resource block

  dynamic  "label"  {
    for_each = complex_value_to_iterate_over
    iterator = iterator_name

    content {
      # body of the dynamic block generated
    }
  }
}
```
