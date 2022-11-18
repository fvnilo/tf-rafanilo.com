terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }

    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 3.0"
    }
  }

  backend "s3" {
    bucket  = "tf-rafanilo.com"
    key     = "rahona-sy-devops.tfstate"
    region  = "ca-central-1"
    encrypt = true
  }
}