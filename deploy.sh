#!/bin/bash

: "${STACK_NAME:=$1}"
: "${BUCKET_FRONT:=$2}"
: "${S3_BUCKET:=$3}"

if [[ -z ${STACK_NAME} ]] ; then
  echo "No stackname was provided."
  echo "Use: sh deploy.sh <STACK_NAME> <S3_BUCKET>"
  exit 2
fi

if [[ -z ${BUCKET_FRONT} ]] ; then
  echo "No S3 bucket Front defined, using 'tgr-s3-front-example'."
  BUCKET_FRONT="tgr-s3-front-example"
fi

if [[ -z ${S3_BUCKET} ]] ; then
  echo "No S3 bucket defined, using 'pit-cf-templates'."
  S3_BUCKET="pit-cf-templates"
fi

FILENAME=$(echo $RANDOM.${STACK_NAME} | openssl dgst -sha1 | sed 's/^.* //')
BUCKET="s3://$S3_BUCKET/$FILENAME"

aws s3 cp swagger.yaml ${BUCKET} --sse

echo '...cleaning distribution folder'
rm -rf dist && mkdir dist && mkdir dist/layers && mkdir dist/tmp

echo '...building production libraries node_modules'
cd ./libs && rm -rf node_modules && npm install && tsc && cd ..

echo '...packaging layer'
cd ./src && claudia pack --force --output ../dist/tmp/layer.zip >> /dev/null && cd ..
unzip dist/tmp/layer.zip 'node_modules/*' -d dist/layers/nodejs/ >> /dev/null && rm -rf dist/tmp
cd ./dist/layers && zip -r9 ../layers.zip nodejs >> /dev/null && cd ../.. &&

echo '...building production source code node_modules'
cd ./src && rm -rf node_modules && npm install && tsc && cd ..

sam package --output-template-file packaged.yaml --template-file template.yaml --s3-bucket ${S3_BUCKET} &&  \
sam deploy --template-file packaged.yaml --capabilities CAPABILITY_NAMED_IAM --region us-east-1 --stack-name ${STACK_NAME} \
  --parameter-overrides SwaggerS3File=${BUCKET} CreateTables=true Environment=dev \
      BucketSite=tgr-redragon

exit 0
