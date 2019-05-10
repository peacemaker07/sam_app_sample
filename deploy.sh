#!/bin/bash -e
# *** deploy cloudformation yaml
sam build && sam package --output-template-file packaged.yaml --s3-bucket jsl-aws-sam-test --profile smart_lock
sam package --output-template-file packaged.yaml --s3-bucket jsl-aws-sam-test --profile smart_lock
