#!/bin/bash

set -e

exec > >(sudo tee /var/log/user-data.log|logger -t user-data -s 2>/dev/console) 2>&1
sudo bash /ops/scripts/server.sh "${server_count}" "${region}" "${cluster_tag_value}" "${token_for_nomad}" "${vault_url}"
