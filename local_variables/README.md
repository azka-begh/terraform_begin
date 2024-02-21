# Local Values

[Locals](https://developer.hashicorp.com/terraform/language/values/locals)

A local value assigns a name to an expressions so you can use the name multiple times within a module. It is helpful to avoid repeating the same values or expressions multiple times in a configuration, but if overused they can also make a configuration hard to read . Locals values are not set by the user input or values in terraform files, instead, they are set ‘locally’ to the configuration .
