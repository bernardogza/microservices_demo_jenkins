data_dir = "/opt/nomad/data"
bind_addr = "IP_ADDRESS"
name = "nomad@IP_ADDRESS"

# Enable the client
client {
  enabled = true
  options = {
    driver.java.enable = "1"
    docker.cleanup.image = false
  }
}

consul {
  address = "IP_ADDRESS:8500"
}

vault {
  enabled = true
  address = "http://52.162.218.143:8200/"
}

telemetry {
  publish_allocation_metrics = true
  publish_node_metrics       = true
}
