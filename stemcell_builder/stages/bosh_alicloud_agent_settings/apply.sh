#!/usr/bin/env bash

base_dir=$(readlink -nf $(dirname $0)/../..)
source $base_dir/lib/prelude_apply.bash

cat > $chroot/var/vcap/bosh/agent.json <<JSON
{
  "Platform": {
    "Linux": {
      "CreatePartitionIfNoEphemeralDisk": true,
      "DevicePathResolutionType": "virtio"
    }
  },
  "Infrastructure": {
    "Settings": {
      "Sources": [
        {
          "Type": "InstanceMetadata",
          "URI": "http://100.100.100.200",
          "SettingsPath": "/latest/user-data"
        }
      ],
      "UseServerName": false,
      "UseRegistry": false
    }
  }
}
JSON
