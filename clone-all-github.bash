#!/bin/bash

curl -s https://api.github.com/users/rbales79/repos?per_page=100 | grep \"clone_url\" | awk '{print $2}' | sed -e 's/"//g' -e 's/,//g' | xargs -n1 git clone