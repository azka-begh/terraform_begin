# String Functions

```terraform console```

1. **Format:**
```
> format("Hello, %s!", "Maya")
Hello, Maya!
```
```
> format("There are %d monkeys", 4)
There are 4 monkeys
```
```
> format("Hello, %s!", var.name)
Hello, Maya!
```
```is equivalent to```
```
> "Hello, ${var.name}!"
Hello, Maya!
```

2. **Formatlist:**
```
> formatlist("Hello, %s!", ["Maya", "Saba", "Vin", "Alice"])
tolist([
  "Hello, Maya!",
  "Hello, Saba!",
  "Hello, Vin!",
  "Hello, Alice!",
])
```
```
> formatlist("%s, %s!", "Salutations", ["Maya", "Saba", "Vin", "Alice"])
tolist([
  "Salutations, Maya!",
  "Salutations, Saba!",
  "Salutations, Vin!",
  "Salutations, Alice!",
])
```
