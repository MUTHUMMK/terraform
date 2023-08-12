terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}


resource provider "aws" {
  region = "ap-south-1"
  access_key = "$ACCESSKEY"
  secret_key = "$SECRETKEY"
}



