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
    bucket  = "fanilo-terraform-states"
    key     = "websites/rahonasydevops.com.tfstate"
    region  = "ca-central-1"
    encrypt = true
  }
}