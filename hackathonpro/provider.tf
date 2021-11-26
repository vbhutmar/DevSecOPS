provider "aws" {
  region  = "${var.region}"
  version = "~> 3.67.0"
}

terraform {
  backend "s3" {
  }
}
