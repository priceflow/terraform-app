#!/usr/bin/env bash

CONFIG=$1
TAG=$(git rev-parse --short HEAD)
EB_BUCKET=priceflow-eb-$CONFIG
echo $TAG
echo $EB_BUCKET
ZIP=priceflow-$TAG.zip

# Replace the <EB_BUCKET> with stage bucket
sudo sed -i "s/<EB_BUCKET>/$EB_BUCKET/g" Dockerrun.aws.json
# Replace the <TAG> with git tag
sudo sed -i "s/<TAG>/$TAG/g" Dockerrun.aws.json

# Zip up the Dockerrun file
zip -r $ZIP Dockerrun.aws.json

# Send zip to S3 Bucket
aws s3 cp $ZIP s3://$EB_BUCKET/$ZIP

