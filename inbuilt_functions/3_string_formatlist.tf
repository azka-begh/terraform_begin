terraform console

> formatlist("Hello, %s!", ["Maya", "Saba", "Vin", "Alice"])
tolist([
  "Hello, Maya!",
  "Hello, Saba!",
  "Hello, Vin!",
  "Hello, Alice!",
])

> formatlist("%s, %s!", "Salutations", ["Maya", "Saba", "Vin", "Alice"])
tolist([
  "Salutations, Maya!",
  "Salutations, Saba!",
  "Salutations, Vin!",
  "Salutations, Alice!",
])
