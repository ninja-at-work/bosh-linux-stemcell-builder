#!/usr/bin/env bash

set -e

base_dir=$(readlink -nf $(dirname $0)/../..)
source $base_dir/lib/prelude_config.bash

# Download CLI source or release from github into assets directory
cd $assets_dir
rm -rf s3cli
mkdir s3cli
curl -L -o s3cli/s3cli http://bosh-stemcell-us-east.oss-us-east-1.aliyuncs.com/s3cli
+echo "3060ff558c99e18f2e965ce972e09d2a14fb4aef s3cli/s3cli" | sha1sum -c -
#current_version=0.0.63
#curl -L -o s3cli/s3cli https://s3.amazonaws.com/s3cli-artifacts/s3cli-${current_version}-linux-amd64
#echo "86dc952cef0cc4549e3e6724c516e93773f457d0 s3cli/s3cli" | sha1sum -c -
