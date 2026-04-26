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
## apply infrastructure changes only if the terraform plan step was successful, which helps prevent potential issues with applying incomplete or incorrect plans.
# added exit code 1