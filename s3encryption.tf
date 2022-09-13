# resource "aws_kms_key" "mykey" {
#   description             = "This key is used to encrypt bucket objects"
#   deletion_window_in_days = 10
# }


resource "aws_s3_bucket_server_side_encryption_configuration" "demo_ecryption" {
  bucket = aws_s3_bucket.s3_static_website_bucket.id

  rule {
    apply_server_side_encryption_by_default {
      # If using SSE-KMS with your KMS key
      #   kms_master_key_id = aws_kms_key.mykey.arn
      #   sse_algorithm     = "aws:kms"

      #If using SSE-KMS with AWS manages key (aws/s3)
      #sse_algorithm = "aws:kms"

      # If using SSE-S3
      sse_algorithm     = "AES256"
    }
  }
}