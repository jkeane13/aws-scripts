#!/bin/bash

echo Deleting stack...
aws cloudformation delete-stack \
  --stack-name $1
aws cloudformation wait stack-delete-complete --stack-name $1
echo Stack Deleted

echo Creating stack...
echo Validating new stack..

aws cloudformation validate-template \
  --template-body file://$2

aws cloudformation create-stack \
  --stack-name $1 \
  --template-body file://$2 \

echo Creating stack...

aws cloudformation wait stack-create-complete \
  --stack-name $1

echo Stack Created...
