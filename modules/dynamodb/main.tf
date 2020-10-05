resource aws_dynamodb_table this {
  name           = var.name
  hash_key       = var.attribute
  read_capacity  = var.rcu
  write_capacity = var.wcu

  attribute {
    name = var.attribute
    type = "S"
  }

  tags = {
    Name = var.name
  }
}
