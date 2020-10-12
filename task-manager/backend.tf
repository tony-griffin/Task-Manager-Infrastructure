terraform {
  backend "s3" {
    encrypt        = true
    bucket         = "tony-terraform-remote-state"
    region         = "eu-west-2"
    key            = "task-manager.tfstate"
    acl            = "bucket-owner-full-control"
    dynamodb_table = "tony-terraform-remote-state"
  }
}
