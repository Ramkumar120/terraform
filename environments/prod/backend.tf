terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.0.0-beta2"
    }
  }
  backend "s3" {
  bucket = "my-terra-bucket-1"
  key    = "environments/prod/terraform.tfstate"
  region = "ap-south-1"
  
  }
}

provider "aws" {
  region = var.aws_region

}




