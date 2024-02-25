# State Locking in Remote Backends

## State Locking in S3:
- By default, **S3 does not support State Lock Functionality**.
- You need to make use of `DynamoDB` table to achieve state locking functionality.


### DynamoDB:
DynamoDB is cloud-native, it does not run on-premises or even in a hybrid cloud; it only runs on Amazon Web Services (AWS).
DynamoDB is NoSQL, it does not support ANSI Structured Query Language (SQL). Instead, it uses a proprietary API based on JavaScript Object Notation (JSON). 
DynamoDB is primarily a key-value store in the sense that its data model consists of key-value pairs in a schemaless, very large, non-relational table of rows (records). 
[DynamoDB](https://www.scylladb.com/learn/dynamodb/introduction-to-dynamodb/)

