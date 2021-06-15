terraform {
    backend "s3" {
      bucket         = "devops-giyongterraform"
      key            = "s3/terraform.tfstate" 
      region         = "ap-northeast-2"  
      encrypt        = true
      dynamodb_table = "terraform-lock"
    }
}
