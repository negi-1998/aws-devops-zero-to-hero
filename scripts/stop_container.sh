#!/bin/bash
set -e

container_ids=$(docker ps -q)

if [ -n "$container_ids" ]; then
  sudo docker rm -f $container_ids
else
  echo "No running containers to remove."
fi
