variable "bucketname" {
  description = "Name of the s3 bucket"
  default     = "testmulti1"
}

variable "tags" {
  type        = map
  description = "All mandatory tags to use on all assets"
  default = {
    Env = "sample"
    Code = "terraform in AWS"
  }
}
