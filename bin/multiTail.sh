#!/bin/bash
set -ex

paths=$@
command="";

for path in $paths
do
    for file in $1/*
    do
        command="${command}tail -f ${file} | sed \"s/^/[${fileescaped}]/\" & "
    done;
done;
echo "${command%??}"
