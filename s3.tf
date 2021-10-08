provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "samplebucket" {
  bucket = lookup(var.bucketname, terraform.workspace)
  acl    = "private"
  tags   = var.tags
}
