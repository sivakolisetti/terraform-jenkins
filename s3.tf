provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "samplebucket" {
  bucket = var.bucketname
  acl    = "private"
  tags   = var.tags
}
