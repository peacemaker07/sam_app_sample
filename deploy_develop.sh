#!/bin/bash
# *** deploy cloudformation yaml
echo AWS_S3_DEPLOY_BUCKET = ${AWS_S3_DEPLOY_BUCKET}
sam build && sam package --output-template-file packaged.yaml --s3-bucket ${AWS_S3_DEPLOY_BUCKET}
## sam package --output-template-file packaged.yaml --s3-bucket jsl-aws-sam-staging
sam deploy --template-file packaged.yaml --stack-name sam-app-stg --capabilities CAPABILITY_IAM --region ap-northeast-1 --parameter-overrides Env=stg
