# Resources in Terraform

[Resources in Terraform](https://developer.hashicorp.com/terraform/language/resources/syntax)

Resources are the most important part of Terraform. They are defined by resource blocks. 
A resource can define one or more infrastructure resource objects, such as VPCs, virtual machines, or DNS records, Consul key-value pair data, etc.

## Comments in Terraform

Terraform code supports three different syntaxes for comments:

**Single-line comments:**
```
# begins a single-line comment, ending at the end of the line.
// also begins a single-line comment, as an alternative to #.
```
**Multi-line comments:**
```
/* and */ are start and end delimiters for a comment that might span over multiple lines.
```
