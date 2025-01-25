terraform {
  backend "s3" {
    bucket = "tf-state-backend-atlas-eks"
    key    = "dev/atlas-eks.tfstate"
    region = "eu-west-3"
    dynamodb_table = "tf-state-lock-atlas-eks"
    encrypt = true
  }
}