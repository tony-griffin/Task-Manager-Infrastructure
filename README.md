# Task-Manager-Infrastructure
Infrastructure code for the Task Manager application

## Setup

1. Install [tfenv](https://github.com/tfutils/tfenv)
2. Install [aws-vault](https://github.com/99designs/aws-vault)

## AWS Vault Usage

1. Add AWS Access Keys `aws-vault add sandbox`
2. Login to AWS Console `aws-vault login sandbox`
3. Run CLI commands `aws-vault exec sandbox -- aws sts get-caller-identity`

## Run Terraform with AWS Vault

1. Initialise the repo - `aws-vault exec sandbox -- terraform init`
2. Plan the repo - `aws-vault exec sandbox -- terraform plan`

## Repo Layout
The intial state file S3 Bucket and Dynamodb resources are called from the root of the
directory.  The task-manager application resources live within the subfolder.
