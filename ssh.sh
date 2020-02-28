#!/bin/bash

serversfile=servers
for var in $(cat $serversfile)
do
ssh-copy-id -f $var
done
#
