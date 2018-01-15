#!/bin/bash
rm -rf out
my_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
docker run                                      \
	--rm=true                                   \
	--volume "$my_dir/out:/out"                 \
	--volume "$my_dir/inner:/script"            \
	ubuntu /script/build.sh
