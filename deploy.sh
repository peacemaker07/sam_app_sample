#!/bin/bash -e
# *** deploy cloudformation yaml
/usr/local/bin/sam build && sam package --output-template-file packaged.yaml --s3-bucket jsl-aws-sam-test --profile smart_lock
/usr/local/bin/sam package --output-template-file packaged.yaml --s3-bucket jsl-aws-sam-test --profile smart_lock
