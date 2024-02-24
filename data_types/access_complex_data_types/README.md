# Complex Data Types

1. **List:**
   * They are used to store multiple items in a single variable.
   * List items are ordered, changeable and allow duplicate values.
   * The values in a list are indexed, the first has index[0], the second has index[1] and so on.
     
```sh
> tolist(["a","b","c","a"])
tolist([
  "a",
  "b",
  "c",
  "a",
])
```

2. **Set:**
   * Set is used to store multiple items in a single variable.
   * Set items are unordered, changeable and no duplicate values are allowed.
  
```sh
> toset(["a","b","c","a"])
toset([
  "a",
  "b",
  "c",
])
```

3. **Map:**
   * Map contains key-value pair pairs.
   * Each value will be associated with a unique Key.

```sh
> tomap({a="alpha", b="beta"})
tomap({
  "a" = "alpha"
  "b" = "beta"
})
>
```

4. **Object:**
   * A collection of values each with their own type.
```sh
variable "user" {
  type = object({
    name  = string
    email = string
    age   = number
  })
  default = {
    name  = "Sam"
    email = "sam@example.com"
    age   = 30
  }
}
```

5. **Tuple:**
   * It is used to store a sequence of values each with their own type in a single variable.
   * Tuple items are ordered, immutable and duplicate values are allowed.
```sh
tuple1 = ["a", 15, true]
```
