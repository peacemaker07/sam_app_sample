#!/bin/bash

sam build --use-container

sam package \
    --output-template-file packaged.yaml \
    --s3-bucket jsl-aws-sam-test

sam deploy --template-file packaged.yaml \
    --stack-name sam-app-sample \
    --capabilities CAPABILITY_NAMED_IAM CAPABILITY_IAM
