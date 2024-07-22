resource "null_resource" "test" {}

terraform {
  backend "s3" {
    bucket = "raiyan-terraform"
    key    = "test/terraform.tfstate"
    region = "us-east-1"
  }
}
