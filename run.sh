#!/bin/bash

args="$@"

args="$@ -p 80"

echo "DB path used $DB_PATH"
file=$DB_PATH

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
