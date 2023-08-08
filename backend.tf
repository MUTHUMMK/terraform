terraform {
  backend "s3" {
    bucket         = "terraform-state-lock-s3-bucket-1"
    key            = "terraform-statetf"   # Change this to a unique name for each configuration
    region         = "ap-south-1"            # Change to your desired AWS region
    dynamodb_table = "dynamodb-lock"
  }
}
