terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "6.38.0"
        }
    }

    backend "s3" {
        bucket = "vpc-remote-state"
        key = "expense/dev/apps/terraform.tfstate"
        region = "us-east-1"
        dynamodb_table = "expense-vpc-locking"
    }
}

provider "aws" {
    region = "us-east-1"
}
