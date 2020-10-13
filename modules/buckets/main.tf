resource aws_s3_bucket this {
  bucket = var.name
  acl    = var.acl

  versioning {
    enabled = var.versioning
  }

  lifecycle {
    prevent_destroy = true
  }

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }

  tags = {
    Name = var.name
  }
}

resource aws_s3_bucket_public_access_block this {
  bucket = aws_s3_bucket.this.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}
