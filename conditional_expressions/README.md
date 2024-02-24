# Conditional Expressions

[Terraform-Conditional-expressions](https://spacelift.io/blog/terraform-conditionals)

- Terraform doesn’t offer the traditional if…else statement.
- Instead, it provides a ternary operator for conditional expressions.

## Ternary Operators

- A Terraform ternary operator is one which operates on three operators.
- Syntactically, the ternary operator defines a Boolean condition, a value when the condition is true, and a value when the condition is false. 
- The ternary operator in Terraform looks like this:
  
    ***condition ? true_part : false_part***

    - The condition operand is any expression whose value resolves to a Boolean, like article == engaging.
    - true_part is the value returned when the condition evaluates to true.
    - false_part is the value when the condition evaluates to false.
