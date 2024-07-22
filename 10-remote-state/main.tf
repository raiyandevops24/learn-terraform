resource "null_resource" "test" {}

terraform {
  backend "s3" {
    bucket = "raiyan-terraform"
    key    = "test1/terraform.tfstate"
    region = "us-east-1"
  }
}
