# create an s3 bucket

aws s3 mb s3://hick-code-sam

#package cloudformation
aws cloudformation package --s3-bucket hick-code-sam --template-file template.yaml --output-template-file ./gen/template-generated.yaml

aws cloudformation deploy --template-file /home/hickos/src/lambda-api-gateway/gen/template-generated.yaml --stack-name lambda-apigateway --capabilities CAPABILITY_IAM
#deploy  
