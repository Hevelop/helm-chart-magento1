#!/bin/bash
set -ex

paths=$@
command="";

for path in ${paths}
do
    for file in ${path}
    do
        touch ${file}
        chown 82:82 ${file}
        fileescaped=${file//\//\\\/}
        command="${command}tail -f ${file} | sed \"s/^/[${fileescaped}]/\" & "
    done;
done;
eval "${command%??}"