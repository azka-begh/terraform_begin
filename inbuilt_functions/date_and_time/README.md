# Date and Time

```terraform console```

1. **formatdate:** Converts a timestamp into a different time format.
```formatdate(spec, timestamp)```
```
> formatdate("DD MMM YYYY hh:mm ZZZ", "2018-01-02T23:12:01Z")
02 Jan 2018 23:12 UTC
```
```
> formatdate("EEEE, DD-MMM-YY hh:mm:ss ZZZ", "2018-01-02T23:12:01Z")
Tuesday, 02-Jan-18 23:12:01 UTC
```
```
> formatdate("EEE, DD MMM YYYY hh:mm:ss ZZZ", "2018-01-02T23:12:01-08:00")
Tue, 02 Jan 2018 23:12:01 -0800
```
```
> formatdate("MMM DD, YYYY", "2018-01-02T23:12:01Z")
Jan 02, 2018
```
```
> formatdate("HH:mmaa", "2018-01-02T23:12:01Z")
11:12pm
```
2. **timestamp:** 
