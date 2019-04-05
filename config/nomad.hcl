data_dir = "/opt/nomad/data"
bind_addr = "IP_ADDRESS"

# Enable the server
server {
  enabled = true
  bootstrap_expect = 1
}

name = "nomad@IP_ADDRESS"

consul {
  address = "IP_ADDRESS:8500"
}

vault {
  enabled = true
  address = "http://52.162.218.143:8200/"
  task_token_ttl = "1h"
  //create_from_role = "admin"
  token = "s.ILwYhU8FvOm02mkHqzb0aswi"
}

telemetry {
  publish_allocation_metrics = true
  publish_node_metrics       = true
}
