#!/bin/bash

aws cloudformation describe-stacks --query 'Stacks[].StackName'
