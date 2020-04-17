#!/bin/sh

dockerd-entrypoint.sh &
until pids=$(pidof dockerd)
do
    sleep 1
done

sleep 1
docker plugin install openpolicyagent/opa-docker-authz-v2:0.4 opa-args="-policy-file /opa/policies/authz.rego" --grant-all-permissions
echo "Plugin installed?: $?"
cp /etc/docker/daemon.json /etc/docker/daemon.json.bak
cp /etc/docker/daemon.json_plugin /etc/docker/daemon.json
kill -HUP $(pidof dockerd)

while true; do
    sleep 1
done
