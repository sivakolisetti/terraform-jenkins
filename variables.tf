variable "bucketname" {
  type = map(string)
  description = "Name of the s3 bucket"
  default = {
    default = "testmulti9876test"
    dev     = "testmulti9876dev"
    prod    = "testmulti9876prod"
  }

variable "tags" {
  type        = map
  description = "All mandatory tags to use on all assets"
  default = {
    Env = "sample"
    Code = "terraform in AWS"
  }
}
