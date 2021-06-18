Lambda criada através dos seguintes comandos do SAM CLI

#cria bucket s3
aws s3 mb s3://hick-code-sam

#monta pacote cloudformation
aws cloudformation package --s3-bucket hick-code-sam --template-file template.yaml --output-template-file ./gen/template-generated.yaml

#deploy
aws cloudformation deploy --template-file /home/hickos/src/gen/template-generated.yaml --stack-name hello-world-sam --capabilities CAPABILITY_IAM
