variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
  default     = "vprofile-eks"
}


# Import and manage EKS addons with Terraform
# re-run after aunthentication to update the addons.