resource "aws_s3_bucket" "s3_static_website_bucket" {
  bucket = "shoaib-static-website-demo"

  tags = {
    Name        = "shoaib-static-website-demo"
    Environment = "Test"
  }
}