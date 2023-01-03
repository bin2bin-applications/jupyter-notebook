#!/bin/bash
export JUPYTER_CONFIG_DIR="/app/jupyter/config"
export JUPYTER_DATA_DIR="/app/jupyter/data"
export JUPYTER_RUNTIME_DIR="/app/jupyter/runtime"

mkdir -p "/app/jupyter/config" "/app/jupyter/data" "/app/jupyter/runtime"

if [ ! -f "/app/jupyter/config/jupyter.token" ]; then
    echo "$(cat /proc/sys/kernel/random/uuid)" | \
        python3 -c "from notebook.auth import passwd;print(passwd(input()))" > \
        "/app/jupyter/config/jupyter.token"
fi

mkdir -p "/app/workspace" && cd "/app/workspace"

exec jupyter notebook --allow-root --ip 0.0.0.0 --port 8080 \
    --NotebookApp.password=$(cat /app/jupyter/config/jupyter.token)