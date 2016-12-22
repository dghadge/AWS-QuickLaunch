#!/bin/bash

##get the latest infrastructure state. Using s3 for repository versioning
#terraform remote config -backend=s3 -backend-config="bucket=tf-aws-automation-infra-states-repo" -backend-config="key=terraform.tfstate" -backend-config="region=us-east-1"

if [ -z $TF_VAR_access_key ]; then
    echo "Please export AWS acess key in variable TF_VAR_access_key"
    exit 1 
fi

if [ -z $TF_VAR_secret_key ]; then
    echo "Please export AWS secret key in variable TF_VAR_secret_key"
    exit 1 
fi

if [ ! -e "$TF_VAR_public_key" ]; then
    echo "Please export AWS public key in variable TF_VAR_public_key"
    echo "Also copy AWS public key in this directory"
    exit 1 
fi

##save the changes before apply
terraform plan -out out.terraform

if [ $? == 0 ] ; then 
##apply changes if and only if you agree
while true; do
    read -p "Do you wish to apply these changes [Y/N] ?" yn
    case $yn in
        [Yy]* ) terraform apply out.terraform; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer Y or N";;
    esac
done
else 
    echo "Aborting; please fix above errors"
fi
