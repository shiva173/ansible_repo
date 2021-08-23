#!/bin/bash

serversfile=servers
for var in $(cat $serversfile)
do
ssh-copy-id vadim@$var
done
#
