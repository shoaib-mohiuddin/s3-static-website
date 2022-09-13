# data "aws_iam_policy_document" "s3_bucket_policy_document" {
#   statement {
#     principals {
#       type        = "*"
#       identifiers = ["*"]
#     }

#     actions = [
#       "s3:GetObject"
#     ]

#     resources = [
#       aws_s3_bucket.s3_static_website_bucket.arn,
#       "${aws_s3_bucket.s3_static_website_bucket.arn}/*",
#     ]
#   }
# }