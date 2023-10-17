#!/usr/bin/env bash

echo $BASH_VERSION

_SWAGGER_BUCKET_FILE=$1

echo "Uploading swagger.yaml ${_SWAGGER_BUCKET_FILE}"

aws s3 cp swagger.yaml ${_SWAGGER_BUCKET_FILE} --sse
