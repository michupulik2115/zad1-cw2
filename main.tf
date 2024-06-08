resource "aws_s3_bucket" "my_bucket" {
  bucket = var.bucket_name

  tags = {
    Name        = "My LocalStack Bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_object" "my_object" {
  bucket = aws_s3_bucket.my_bucket.bucket
  key    = "example.txt"
  source = "C:\Program Files\Docker\Docker"
  etag   = filemd5("C:\Program Files\Docker\Docker")
}
