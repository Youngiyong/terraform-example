terraform {
    backend "s3" {
      bucket         = "giyong-jupiter-apne2-tfstate"
      key            = "iam/terraform.tfstate" 
      region         = "ap-northeast-2"  
      encrypt        = true
      dynamodb_table = "terraform-lock"
    }
}
