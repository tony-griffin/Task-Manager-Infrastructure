module state_bucket {
  source = "./modules/buckets"
  name   = local.remote_state_name
}

module state_dynamodb {
  source    = "./modules/dynamodb"
  name      = local.remote_state_name
  rcu       = local.remote_state_dynamo_config["rcu"]
  wcu       = local.remote_state_dynamo_config["wcu"]
  attribute = local.remote_state_dynamo_config["attribute"]
}
