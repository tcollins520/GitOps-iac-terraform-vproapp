# This file is used to configure the Terraform settings, including the required providers and the backend for storing the state file. The required providers are AWS, Random, TLS, CloudInit, and Kubernetes. The backend is configured to use AWS S3 for storing the Terraform state file. The required version of Terraform is set to 1.6.3 or higher.
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.28.0"
    }

    random = {
      source  = "hashicorp/random"
      version = "~> 3.5"
    }

    tls = {
      source  = "hashicorp/tls"
      version = "~> 4.0"
    }

    cloudinit = {
      source  = "hashicorp/cloudinit"
      version = "~> 2.3"
    }

    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.38"
    }
  }
  # it is recommended to use a remote backend to store the state file, especially when working in a team. Here we are using AWS S3 as the backend for storing the Terraform state file.
  backend "s3" {
    bucket = "eks-dev520"
    key    = "eks-dev/terraform.tfstate"
    region = "us-east-1"
  }

  required_version = ">= 1.6.3"
}

