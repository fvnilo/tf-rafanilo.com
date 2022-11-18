resource "aws_s3_bucket" "rafanilo_com" {
   bucket = "rafanilo.com" 

   force_destroy = true

   tags = {
    Name        = "rafanilo.com"
  }
}

resource "aws_s3_bucket_website_configuration" "rafanilo_com" {
  bucket = aws_s3_bucket.rafanilo_com.bucket

  index_document {
    suffix = "index.html"
  }
}

resource "aws_s3_bucket_policy" "allow_access_from_cloudflare" {
  bucket = aws_s3_bucket.rafanilo_com.id
  policy = data.aws_iam_policy_document.allow_access_from_cloudflare.json
}

data "aws_iam_policy_document" "allow_access_from_cloudflare" {
  statement {
    sid = "AllowCloudflareAccessOnly"

    principals {
      type = "*"
      identifiers = ["*"]
    }

    condition {
        test = "IpAddress"
        variable = "aws:SourceIp"
        values = var.cloudflare_ip_ranges
    }

    actions = [
      "s3:GetObject"
    ]

    resources = [
      "${aws_s3_bucket.rafanilo_com.arn}/*",
    ]
  }
}