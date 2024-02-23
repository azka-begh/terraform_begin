# Provisioners

* We have so far created, modified and destroyed infrastructure with terraform. But what if we want to provision it as well?
* We can do that with the help of provisioners.
* Provisioners are used to execute scripts on a local or remote machine as part of resource creation or destruction.

Terraform provisioners have nothing in common with providers, they allow the execution of various commands or scripts on either local or remote machines, and they can also transfer files from a local environment to a remote one. 

There are three available provisioners:
**file** (used for copying), **local-exec** (used for local operations), **remote-exec** (used for remote operations). 
\The file and remote-exec provisioners need a connection block to be able to do the remote operations.

Example:
On creation of web-server, execute a script which installs Nginx on that server.
