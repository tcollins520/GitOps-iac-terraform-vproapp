variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
<<<<<<< HEAD
  default     = "vprofile-eks-cluster"
}


=======
  default     = "vprofile-eks"
}


# Import and manage EKS addons with Terraform
# re-run after aunthentication to update the addons.
>>>>>>> 86f22d44e8b5b5b7e2cbec74f46ff261515b8ee1
