terraform console

# element(list, index)

> element(["a", "b", "c"], 1)
b

> element(["a", "b", "c"], 3)
a

> element(["a", "b", "c"], length(["a", "b", "c"])-1)
c
