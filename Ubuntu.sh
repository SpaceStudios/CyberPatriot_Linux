bash

#!/bin/bash

sudo apt-get update -y
sudo apt-get upgrade -y

users=()
adminstrators=()

echo How many users are there on the system?
read userCount