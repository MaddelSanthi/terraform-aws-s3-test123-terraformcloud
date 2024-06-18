
terraform {
  backend "remote" {
    hostname = "cmrit939.scalr.io"
    organization = "env-v0od9bfiuheanstpu"

    workspaces {
      name = "s3cmrittest"
    }
  }
}
provider "aws"{
region="ap-south-1"
}
resource "aws_s3_bucket" "my_bucket" {
 bucket = "my-tf-test-bucket-${var.unique_id}"
  acl    = "private"
}

variable "unique_id" {
  description = "A unique identifier for the bucket name"
  type        = string
  default     = "20240618-1234"  # Replace with your unique identifier
}



