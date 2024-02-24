# Zipmap

Zipmap is a built in terraform function, which can be used to create a map dynamically. For static values , we can have a variable of type map, but zipmap is a gamechanger for dynamic values.

`zipmap(keyslist, valueslist)`

Both keyslist and valueslist must be of the same length. keyslist must be a list of strings, while valueslist can be a list of any type.

```sh
terraform console
> zipmap(["a", "b"], [1, 2])
{
  "a" = 1
  "b" = 2
}
```
![7656022B-7340-47EE-8683-090AE3CB7B76_1_201_a](https://github.com/begh-azka/terraform_aws/assets/97597065/8b74cbec-115b-4a92-8652-44e765a4a058)
