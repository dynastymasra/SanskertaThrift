#!/bin/bash
# This will generate go code from thrift file in contract

rm -rf gen-go

eval "$(docker-machine env $1)"

for i in `ls *thrift`
do
    docker run -v "$PWD:/data" thrift thrift -o /data --gen go:private-members,fullcamel /data/$i;
done;

rm -rf ../contract
mkdir -p ../contract

rsync -a gen-go/sanskerta/* ../
