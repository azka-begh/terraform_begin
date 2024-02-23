## Collection Functions:

1. **element Function:** element retrieves a single element from a list.
```element(list, index)```
```
> element([1,2,3],0)
1
```

2. **index Function:** index finds the element index for a given value in a list.
```index(list, value)```
```
> index(["A","b","c"],"c")
2
```

3. **length Function:** length determines the length of a given list, map, or string.
```length(list)```
```
> length(["a","b","c"])
3
```

4. **lookup Function:** lookup retrieves the value of a single element from a map, given its key. If the given key does not exist, the given default value is returned instead.
```lookup(map, key, default)```
```
> lookup({a="app",b="beta"},"a","hello")
"app"
```

5. **merge Function:** merge takes an arbitrary number of maps or objects, and returns a single map or object that contains a merged set of elements from all arguments.
```merge({key1="value1", key2="value2"}, {key3="value3", key4="value4"})```
```
> merge({key1="value1", key2="value2"}, {key3="value3", key4="value4"})
{
  "key1" = "value1"
  "key2" = "value2"
  "key3" = "value3"
  "key4" = "value4"
}
```

6. **concat Function:** concat takes two or more lists and combines them into a single list.
```concat([list1], [list2])```
```
> concat([1,2,3], [4,5,6])
[
  1,
  2,
  3,
  4,
  5,
  6,
]
```

7. **contains Function:** contains determines whether a given list or set contains a given single value as one of its elements.
```contains(list, value)```
```
> contains(["a","b","c"], 1)
false
```

8. **values Function:** values takes a map and returns a list containing the values of the elements in that map.
```values({key="value"}```
```
> values({a="app",b="blue"})
[
  "app",
  "blue",
]
```

9. **keys Function:** keys takes a map and returns a list containing the keys from that map.
```keys({key="value"}```
```
> keys({a="app",b="blue"})
[
  "a",
  "b",
]
```
