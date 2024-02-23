# Count and Count Index

[Terraform Count](https://spacelift.io/blog/terraform-count)

## Meta-Arguments:
Meta-arguments are special arguments provided by Terraform to be used in the resource, data, or module blocks. The meta-argument supported in each block type varies. For example, the count meta-argument is supported in the resource, data, and module blocks.

## Count: 
The count meta-argument accepts a whole number. It is used to create multiple instances of an infrastructure object when it is used in a resource or module block. Also, when used in a data block, it fetches multiple instances of an object. Let’s look at some examples that use the count meta-argument.

## Count.index
The count.index attribute represents the unique index number of each object created using the count meta-argument. 

## Challenges with count
* Even if the count meta-argument is used to provision multiple infrastructure objects in Terraform; it is recommended to use it when provisioning objects that are almost identical to avoid unexpected infrastructural changes during a modification.

* With count, if you remove the element at index 0 (i.e., sandbox_server_one) in var.sandboxes, the following happens:
  
  * The current element at index 1 (i.e., sanbox_server_two) will now become the new element at index 0, i.e., sandbox_server_two is now at index 0
  * The current element at index 2 (i.e., sanbox_server_three) will now be the new element at index 1, i.e., sandbox_server_three is now at index 1
  * There will be no element at index 3, and this index will be destroyed.

## Performance considerations when using count
Below are some best practices to adhere to when working with count:

* Using count potentially increases the number of API requests made to a Terraform provider for every infrastructure object created. Hence, you need to use count carefully to avoid exceeding API rate limits which can degrade performance.
* Use count cautiously in data blocks. When you fetch data in large-scale deployments using the data block with the count meta-argument, the result could be quite large. If this happens and the underlying server that Terraform runs on has limited resources (i.e., memory, CPU), it can impact Terraform’s process, which eventually impacts performance.
