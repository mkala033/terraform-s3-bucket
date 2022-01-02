provider "aws" {
  region = var.aws_region
  access_key = "AKIA5D5JWOUCU3C6BY5J"
  secret_key = "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"
}

resource "aws_s3_bucket" "my-s3-bucket" {
  bucket_prefix = var.bucket_prefix
  acl = var.acl
  
   versioning {
    enabled = var.versioning
  }
  
  tags = var.tags
}
