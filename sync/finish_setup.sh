#!/bin/sh

set -e

echo "`/bin/sh ./update_node.sh`"
echo "`/bin/sh ./install_development_dependencies.sh`"
echo "`/bin/sh ./install_docker.sh`"

exit