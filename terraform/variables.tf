variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
  default     = "eks-dev-cluster"
}


# Note: The VPC and subnets are created in the vpc module, and their IDs are passed to the EKS module.
# This allows the EKS module to create the cluster in the correct network environment without hardcoding any values here.