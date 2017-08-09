#!/bin/bash

echo Deleting Stack...
aws cloudformation delete-stack \
  --stack-name $1
aws cloudformation wait stack-delete-complete --stack-name $1
echo Stack Deleted
