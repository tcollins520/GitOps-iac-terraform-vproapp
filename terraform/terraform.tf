terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.25.0"
    }

    random = {
      source  = "hashicorp/random"
      version = "~> 3.5.1"
    }

    tls = {
      source  = "hashicorp/tls"
      version = "~> 4.0.4"
    }

    cloudinit = {
      source  = "hashicorp/cloudinit"
      version = "~> 2.3.2"
    }

    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.23.0"
    }
  }
  # it is recommended to use a remote backend to store the state file, especially when working in a team. Here we are using AWS S3 as the backend for storing the Terraform state file.
  backend "s3" {
    bucket = "vprofileactions520"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }

  required_version = "~> 1.6.3"
}
##
##
##
