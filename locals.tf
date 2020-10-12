locals {
  region            = "eu-west-2"
  remote_state_name = "tony-terraform-remote-state"
  remote_state_dynamo_config = {
    rcu       = 20
    wcu       = 20
    attribute = "LockID"
  }
}
