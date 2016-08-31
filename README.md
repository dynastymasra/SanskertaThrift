# Thrift Definition for Axia Application

[![Thrift](https://img.shields.io/badge/Apache%20Thrift-0.9.3-yellow.svg)](https://thrift.apache.org/)
[![License](https://img.shields.io/badge/license-MIT-44897A.svg)](https://github.com/dynastymasra/SanskertaThrift/blob/master/LICENSE)

Thrift definition for `Sanskerta` project.

## How To Install

1. Make sure you have installed latest Apache Thrift (`0.9.*`) in your os.
2. Go to download directory thrift, example `/download/thrift` and from terminal run `./configure && make`
3. Choose your working directory, example: `/document/thrift`
4. In inside directory use command `thrift --gen <language> <Thrift filename>`
5. To recursivly generate source code from a Thrift file and all other Thrift files included by it, run `thrift -r --gen <language> <Thrift filename>`

## Run with Shell Script

For run shell script first must install `docker` because its run over docker.
After that run shell script example `./go.sh`, this will generate code from thrift file.
