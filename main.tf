

terraform {
  backend "remote" {
    hostname = "protran.scalr.io"
    organization = "env-v0odelrmuhoqui60a"

    workspaces {
      name = "test123"
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



