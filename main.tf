

provider "aws"{
region="us-east-1"
access_key = ""
secret_key = ""

}
resource "aws_s3_bucket" "my_bucket" {
 bucket = "my-tf-test-bucket-${var.unique_id}"
  acl    = "private"
}

variable "unique_id" {
  description = "A unique identifier for the bucket name"
  type        = string
  default     = "20240618-1111"  # Replace with your unique identifier
}



