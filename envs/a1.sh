#!/bin/bash

base_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." >/dev/null 2>&1 && pwd)"

COMPOSE_FILE="${base_dir}/services/hass/docker-compose.yml"
COMPOSE_FILE="${COMPOSE_FILE}:${base_dir}/services/plex/docker-compose.yml"

source ${base_dir}/envs/_common.sh