#s3 
resource "aws_s3_bucket" "my-aws_s3_bucket" {
    bucket_prefix = var.bucketname
    acl = var.acl

     versioning {
      enabled = var.versioning
    }
  
}

terraform {
  backend "s3" {
    bucket         = "terraform-state-lock-s3-bucket-new"
    key            = "terraform-statetf"   # Change this to a unique name for each configuration
    region         = "ap-southeast-1"            # Change to your desired AWS region
    encrypt        = true                   # Set to true if you want to encrypt the state file
    dynamodb_table = "terraform-state-lock-dynamoDB" # Optional: Use DynamoDB for locking
  }
}
