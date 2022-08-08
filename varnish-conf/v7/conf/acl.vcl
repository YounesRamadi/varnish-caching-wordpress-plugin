# Access control list for purge requests
# by default purge is allowed only from localhost
# if you wan to allow an other host, add it to the list

acl purge {
    "localhost";
    "127.0.0.1";
}