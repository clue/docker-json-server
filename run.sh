#!/bin/bash

args="$@"

args="$@ -p 80"

file=${DB_PATH:-'/data/db.json'}

if [ -f $file ]; then
    echo "Found $file, trying to open"
    args="$args $file"
fi

file=/data/file.js
if [ -f $file ]; then
    echo "Found file.js seed file, trying to open"
    args="$args file.js"
fi

json-server $args
