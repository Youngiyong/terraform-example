provider "aws" {
  region = "ap-northeast-2" # Please use the default region ID
  version = "~> 2.49.0" # Please choose any version or delete this line if you want the latest version
}

# S3 bucket for backend
resource "aws_s3_bucket" "tfstate" {
  bucket = "giyong-jupiter-apne2-tfstate"

  versioning {
    enabled = true # Prevent from deleting tfstate file
  }
}
