# For_Each Meta-Argument

 * for_each works with unordered collections like a map or set, so elements are referenced by string values instead of index value.

 * The for_each meta-argument is just another way to create multiple similar instances of an infrastructure resource in a more flexible way.

 * for_each works with either a set or map of strings, we can just do a type conversion using the built-in terraform function, toset. It takes a list type and converts it to a set. A set is an unordered collection of unique values.
   
 * In blocks where for_each is set, an additional each object is available. The each object is used to customize the configuration of each similar resource. This object also comes with 2 properties:
   * each.key for a set is the values of a set. For a map, it is the map’s key, e.g. {map_key: “map_value” }
   * each.value for a set is the same as each.key. For a map, it is the associated value for the key.
