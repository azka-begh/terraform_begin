locals {
 map_var = {
   test = "this"
 }
 try1 = try(local.map_var.test2, "fallback")
}

output "try1" {
 value = local.try1
}

# The output of this code will be “fallback”, as the expression local.map_var.test2 is unusable.
