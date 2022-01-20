terraform{
    /*required_providers {
      aws = {
          source = "hashicorp/aws"
          #version = ""
      }
    }*/
    backend "s3" {
        bucket="code-pipeline-demo3"
        encrypt = true
        key = "terraform.tfstate"
        region = "eu-west-1"
    }
}

provider "aws" {
    region = "eu-west-1"
    profile = "default"
      
}
