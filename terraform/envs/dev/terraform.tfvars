project_name = "atlas-eks"
environment        = "dev"
component          = "devops"
eks_version        = "1.31"
vpc_cidr           = "10.1.0.0/16"

/*
locals {
  # create a name like 'atlas-eks-dev-1-27'
  env_name = "${var.project_name}-${var.environment}-${replace(var.eks_version, ".", "-")}"
}
*/


vpc_params = {
  vpc_cidr               = "10.1.0.0/16"
  enable_nat_gateway     = true
  one_nat_gateway_per_az = false
  single_nat_gateway     = true
  enable_vpn_gateway     = false
  enable_flow_log        = false
}