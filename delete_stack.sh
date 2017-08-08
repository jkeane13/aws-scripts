#!/bin/bash

echo Deleting Stack...
aws cloudformation delete-stack \
  --stack-name $1
aws cloudformation wait delete-stack-complete --stack-name $1
echo Stack Deleted
