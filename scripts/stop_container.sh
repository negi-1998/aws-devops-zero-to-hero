#!/bin/bash
set -e
#!/bin/bash
containerid=` docker ps | awk -F " "'{print $1}'`
docker rm -f $containerid
