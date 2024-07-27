
# set -e
# containerid=` docker ps | awk -F " "'{print $1}'`
# sudo docker rm -f $containerid
#!/bin/bash
set -e

Get the IDs of all running containers
container_ids=$(docker ps -q)

# Remove all running containers
if [ -n "$container_ids" ]; then
  sudo docker rm -f $container_ids
else
  echo "No running containers to remove."
fi
