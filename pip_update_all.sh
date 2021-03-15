#!/bin/env bash

# Set colors used.
RED='\033[1;31m'
NC='\033[0m'

echo -e "${RED}Note:  You many need to run this "as root" (aka sudo) if you updating your system's packages.${NC}"
echo

# Update pip first
pip3 install -U pip

# List all Python packages in this environment, cut off the `==<version>`, and update package.
for package in `pip3 freeze`
do
    item=${package%%=*}
    echo "Updating $item"
    pip3 install -U $item
done
