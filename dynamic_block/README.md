# Dynamic Blocks in Terraform

[Dynamic Blocks](https://kodekloud.com/blog/terraform-dynamic-block/)

Some top-level block types, like the resource block, have arguments in the form of name = expression and also have nested blocks as arguments. **Terraform dynamic blocks are commonly used to dynamically construct these repeated nested block arguments in resource-type blocks.**

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
* **label:** specifies the kind of repeated nested block to generate.
* **for_each:** specifies the complex value (common collections used are either list or map) to iterate over.
* **Iterator:** is optional. It specifies a name that represents the current element of the complex value being iterated over. if the iterator argument is not set, this defaults to the label of the dynamic block. Also, the iterator object has 2 properties:
   1. **key** for a list is the list element index of the current element (e.g., 0, 1, or 2). For a map, it is the map’s key (e.g. {map_key: “map_value” }). 
   2. **value** for a list or map is the value of the current element.
* **labels:** is optional. It is used to specify additional labels for the generated blocks. 
* **content:** is the body of each generated block. This contains the arguments of each dynamically constructed block. The iterator is accessed within this block to get the values of each dynamically generated block.
