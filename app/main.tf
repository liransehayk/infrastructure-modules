provider "aws" {
  region = "us-west-2"
  profile = "default"
  # ... other provider settings ...
}
terraform {
  backend "s3" {}
}
module "app" {
  source = "../../../app"
  instance_type  = var.instance_type
  instance_count = var.instance_count
  # ... other app settings ...
}
