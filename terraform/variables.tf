variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "clusterName" {
  description = "Name of the EKS cluster"
  type        = string
  default     = "vprofile-eks"
}

## Add more variables as needed for your Terraform configuration, such as VPC settings, node group configurations, etc.
# testing workflow
# changed actions/checkout@v2 to actions/checkout@v4
## added apply steps to workflow
## testing apply steps in workflow