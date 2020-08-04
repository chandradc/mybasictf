provider "aws" {
  region = "us-east-1"
  access_key = "AKIAR5OZKD75I2BLHEIK"
  secret_key = "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"
}

// Create an S3 bucket

resource "aws_s3_bucket" "tfbucket" {
  bucket = "chandradc-1040"

}

output "BucketARN" {
  value = aws_s3_bucket.tfbucket.arn
}

output "BucketName" {
  value = upper(aws_s3_bucket.tfbucket.bucket)
}
