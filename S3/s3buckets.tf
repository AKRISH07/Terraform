provider "aws" {
  region="us-east-1"
}

resource "aws_s3_bucket" "BucketCreation" {
  bucket = "anands3bucket2022"
  tags = {
    "Name" = "BucketFromTerraform"
  }
}

resource "aws_s3_bucket_versioning" "BucketVersioning"{
    bucket = aws_s3_bucket.BucketCreation.id
    versioning_configuration {
      status="Enabled"
    }
}

resource "aws_kms_key" "KeyForS3" {
  description = "KMS_Key"
  deletion_window_in_days = 10
}

resource "aws_s3_bucket_server_side_encryption_configuration" "SSEKMS_Encryption" {
  bucket = aws_s3_bucket.BucketCreation.id
  rule {
    apply_server_side_encryption_by_default {
        kms_master_key_id = aws_kms_key.KeyForS3.arn
        sse_algorithm= "aws:kms"
        }
    }
}

resource "aws_s3_bucket_website_configuration" "Static_Website_Hosting"{
bucket=aws_s3_bucket.BucketCreation.id
index_document{
    suffix = "Index.html"
    }
}

#By Default it will not block all public access