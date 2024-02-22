# Zipmap

Zipmap is a built in terraform function, which can be used to create a map dynamically. For static values , we can have a variable of type map, but zipmap is a gamechanger for dynamic values.

```zipmap(keyslist, valueslist)```

Both keyslist and valueslist must be of the same length. keyslist must be a list of strings, while valueslist can be a list of any type.

```
terraform console
> zipmap(["a", "b"], [1, 2])
{
  "a" = 1
  "b" = 2
}
```
