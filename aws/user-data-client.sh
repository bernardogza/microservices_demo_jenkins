#!/bin/bash

set -e

exec > >(sudo tee /var/log/user-data.log|logger -t user-data -s 2>/dev/console) 2>&1
sudo bash /ops/scripts/client.sh "${region}" "${cluster_tag_value}" "${server_ip}" "${vault_url}"
