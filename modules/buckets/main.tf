resource aws_s3_bucket this {
  bucket = var.name
  acl    = var.acl

  versioning {
    enabled = var.versioning
  }

  lifecycle {
    prevent_destroy = true
  }

  tags = {
    Name = var.name
  }
}
