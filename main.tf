provider "aws" {
    region = "us-east-1"
}
resource "aws_s3_bucket" "b" {
  bucket = "my-tf-test-bucket-amy"

  tags = {
    Name        = "My bkt"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.b.id
  acl    = "private"
}