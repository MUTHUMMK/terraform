terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}


provider "aws" {
  access_key = "AKIAZSKSHLL7STQLU6EC"
  secret_key = "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"
  region     = "ap-south-1"
}

terraform {
  backend "s3" {
    bucket         = "terraform-state-lock-s3-bucket-1"
    key            = "terraform-statetf"   # Change this to a unique name for each configuration
    region         = "ap-south-1"            # Change to your desired AWS region
    
  }
}

