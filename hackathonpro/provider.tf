provider "aws" {
  region  = "${var.region}"
  version = "~> 3.67.0"
}

data "aws_vpc" "vpc" {
  default = true
}

data "aws_subnet_ids" "all" {
  vpc_id = data.aws_vpc.default.id
}

terraform {
  backend "s3" {
  }
}
