#!/bin/bash
# *** deploy cloudformation yaml
sam build && sam package --output-template-file packaged.yaml --s3-bucket jsl-aws-sam-test
# sam package --output-template-file packaged.yaml --s3-bucket jsl-aws-sam-test
