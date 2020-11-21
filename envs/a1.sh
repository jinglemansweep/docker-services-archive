#!/bin/bash

base_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." >/dev/null 2>&1 && pwd)"

COMPOSE_FILE="${base_dir}/services/plex/docker-compose.yml"

export DOCKER_UID="$(id -u)"
export DOCKER_GID="$(id -g)"
export COMPOSE_PROJECT_NAME="homeops_$(hostname)"
export COMPOSE_FILE

echo "HomeOps"
echo 
echo "Stack:     ${COMPOSE_PROJECT_NAME}"
echo "Directory: ${base_dir}"
echo "User:      ${USER} (uid=${DOCKER_UID}, gid=${DOCKER_GID})"
echo "Services:  ${COMPOSE_FILE}"