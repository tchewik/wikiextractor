#!/bin/bash

INPUT=$1
cat $INPUT | awk -F "\"*,\"*" '{print $2}' | sed -e s/Category://g | tail -n +2  > categories.filter