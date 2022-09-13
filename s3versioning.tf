resource "aws_s3_bucket_versioning" "versioning_demo" {
  bucket = aws_s3_bucket.s3_static_website_bucket.id

  versioning_configuration {
    status = "Enabled"
  }
}