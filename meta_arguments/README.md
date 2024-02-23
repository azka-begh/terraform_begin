# Resource Behavior and Meta-Arguments

## How Terraform Applies a Configuration?

* Creates resources that exist in the configuartion files but are not associated with a real infrastructure object in the state file.

* Destroys resources that exist in the state file but no longer exist in the config files.

* Updates in-place resources whose arguments have changed (Example: You changed a tag).

* Destroys and re-creates resources whose arguments have changed but which cannot be updated in-place due to remote API limitation (Example: You changed the ami from Amazon Linux to Windows).


## Understanding the Limitations:

**What happens if we want to change the default behavior?**

* You created infrastructure via Terraform and later on someone made manual changes in the infrastructure. What if you want to keep the manual changes and not let Terraform undo them?
* So, what you are trying to do is change the default behavior of terraform apply. You are trying to seek some flexibility.

**This is where meta arguments come into picture.**

## Meta Arguments:
Terraform allows us to include meta-arguments within the resource block which allows some details of standard resource behavior to be customized on a per-resource basis. meta-arguments are special arguments used to modify the behavior of resources or blocks. They provide additional functionality beyond the standard resource configuration.

There are 5 Meta-Arguments in Terraform which are as follows:
1. **depends_on:** There are rare scenarios where Terraform cannot infer dependencies between resources. In these cases, you will need to create an explicit dependency. Terraform depends_on allows you to create an explicit dependency between two resources.
2. **count:** The count meta-argument accepts a whole number. It is used to create multiple instances of an infrastructure object when it is used in a resource or module block. Also, when used in a data block, it fetches multiple instances of an object.
3. **for_each:** The for_each meta-argument creates multiple instances of a module or resource block. However, instead of specifying the number of resources, the for_each meta-argument accepts a map or a set of strings.
4. **provider:** The provider meta-argument specifies which provider to be used for a resource. This is useful when you are using multiple providers which is usually used when you are creating multi-region resources.
5. **lifecycle:** The lifecycle meta-argument can be used to specify how Terraform should handle the creation, modification, and destruction of resources.
