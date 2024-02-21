# Count and Count Index

## Meta-Arguments:
Meta-arguments are special arguments provided by Terraform to be used in the resource, data, or module blocks. The meta-argument supported in each block type varies. For example, the count meta-argument is supported in the resource, data, and module blocks.

## Count: 
The count meta-argument accepts a whole number. It is used to create multiple instances of an infrastructure object when it is used in a resource or module block. Also, when used in a data block, it fetches multiple instances of an object. Let’s look at some examples that use the count meta-argument.

## Count.index
The count.index attribute represents the unique index number of each object created using the count meta-argument. 
