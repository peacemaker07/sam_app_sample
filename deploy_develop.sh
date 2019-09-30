#!/bin/bash
# *** deploy cloudformation yaml
sam build && sam package --output-template-file packaged.yaml --s3-bucket jsl-aws-sam-staging
sam package --output-template-file packaged.yaml --s3-bucket jsl-aws-sam-staging
