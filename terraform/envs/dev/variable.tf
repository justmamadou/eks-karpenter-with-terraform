variable "project_name" {
  description = "A project name to be used in resources"
  type        = string
  default     = "atlas-eks"
}

variable "component" {
  description = "A team using this project (backend, web, ios, data, devops)"
  type = string
}

variable "environment" {
  description = "Dev/Prod, will be used in AWS resources Name tag, and resources names"
  type        = string
}

variable "eks_version" {
  description = "Kubernetes version, will be used in AWS resources names and to specify which EKS version to create/update"
  type        = string
}

variable "vpc_cidr" {
  description = "VPC Cidr"
  type = string
}

variable "vpc_params" {
  type = object({
    vpc_cidr               = string
    enable_nat_gateway     = bool
    one_nat_gateway_per_az = bool
    single_nat_gateway     = bool
    enable_vpn_gateway     = bool
    enable_flow_log        = bool
  })
}