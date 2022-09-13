resource "aws_s3_bucket_website_configuration" "s3_website_conf" {
  bucket = aws_s3_bucket.s3_static_website_bucket.id

  index_document {
    suffix = "index.html"
  }

  error_document {
    key = "error.html"
  }
}