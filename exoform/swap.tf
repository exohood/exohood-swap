provider "aws" {
   region = "us-east-1"
}

resource "aws_s3_bucket" "exohood-swap-dev" {
  bucket = "exohood-swap-dev"
}

resource "aws_s3_bucket_public_access_block" "swap-dev-acl" {
  bucket = aws_s3_bucket.onramper-swap-dev.id
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}
