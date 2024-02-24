# Date and Time

`terraform console`

1. **formatdate:** Converts a timestamp into a different time format.
`formatdate(spec, timestamp)`
```sh
> formatdate("DD MMM YYYY hh:mm ZZZ", "2018-01-02T23:12:01Z")
02 Jan 2018 23:12 UTC
```
```sh
> formatdate("EEEE, DD-MMM-YY hh:mm:ss ZZZ", "2018-01-02T23:12:01Z")
Tuesday, 02-Jan-18 23:12:01 UTC
```
```sh
> formatdate("EEE, DD MMM YYYY hh:mm:ss ZZZ", "2018-01-02T23:12:01-08:00")
Tue, 02 Jan 2018 23:12:01 -0800
```
```sh
> formatdate("MMM DD, YYYY", "2018-01-02T23:12:01Z")
Jan 02, 2018
```
```sh
> formatdate("HH:mmaa", "2018-01-02T23:12:01Z")
11:12pm
```
2. **timestamp:**   Timestamp function returns a UTC timestamp string in RFC 3339 format.
```sh
> timestamp()
"2024-02-21T11:00:43Z"
```
