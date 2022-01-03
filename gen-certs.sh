#!/usr/bin/env bash

set -e
set -x

openssl genrsa -out key.pem
openssl req -new -key key.pem -out csr.pem -subj /C=NL/CN=klmbook.fritz.box:8080
openssl x509 -req -days 9999 -in csr.pem -signkey key.pem -out cert.pem
rm csr.pem
