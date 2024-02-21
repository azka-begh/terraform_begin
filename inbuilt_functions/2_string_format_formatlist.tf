terraform console

> format("Hello, %s!", "Maya")
Hello, Maya!

> format("There are %d monkeys", 4)
There are 4 monkeys


> format("Hello, %s!", var.name)
Hello, Maya!

#is equivalent to

> "Hello, ${var.name}!"
Hello, Maya!
