terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.52" 
    }
  }
}

provider "aws" {
  region                      = "us-east-1"
  access_key                  = "test"
  secret_key                  = "test"
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  endpoints {
    s3 = "http://localhost:4566"
  }
}


