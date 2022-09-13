resource "aws_s3_bucket_policy" "allow_web_access" {
  bucket = aws_s3_bucket.s3_static_website_bucket.id
  policy = data.aws_iam_policy_document.s3_bucket_policy_document.json
}

data "aws_iam_policy_document" "s3_bucket_policy_document" {
  statement {
    principals {
      type        = "*"
      identifiers = ["*"]
    }

    actions = [
      "s3:GetObject"
    ]

    resources = [
      
      "${aws_s3_bucket.s3_static_website_bucket.arn}/*"
    ]
  }
}