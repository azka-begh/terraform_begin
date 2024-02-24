# String Functions

`terraform console`

1. **Format:**
```sh
> format("Hello, %s!", "Maya")
Hello, Maya!
```
```sh
> format("There are %d monkeys", 4)
There are 4 monkeys
```
```sh
> format("Hello, %s!", var.name)
Hello, Maya!
```
`is equivalent to`
```sh
> "Hello, ${var.name}!"
Hello, Maya!
```

2. **Formatlist:**
```sh
> formatlist("Hello, %s!", ["Maya", "Saba", "Vin", "Alice"])
tolist([
  "Hello, Maya!",
  "Hello, Saba!",
  "Hello, Vin!",
  "Hello, Alice!",
])
```
```sh
> formatlist("%s, %s!", "Salutations", ["Maya", "Saba", "Vin", "Alice"])
tolist([
  "Salutations, Maya!",
  "Salutations, Saba!",
  "Salutations, Vin!",
  "Salutations, Alice!",
])
```
