#!/bin/bash

if [ "$#" -lt "2" ]; then
    echo "ERROR: Two parameters expected - input and output kernel config file"
    exit 1
fi

cat $1 \
| egrep '^(# )?CONFIG_' \
| sed -e 's/# \(CONFIG_.\+\)/\1/' \
| sort \
> $2
