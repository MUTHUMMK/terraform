terraform {
  backend "s3" {
    bucket         = "terraform-state-lock-s3-bucket-1"
    key            = "main"                 # Change this to a unique name for each configuration
    region         = "ap-south-1"           # Change to your desired AWS region
    encrypt        = true                   # Set to true if you want to encrypt the state file
    dynamodb_table = "dymanodb-lock-1"          # Optional: Use DynamoDB for locking
  }
}
