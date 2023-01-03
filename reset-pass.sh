#!/bin/bash
echo "$2" | \
    python3 -c "from notebook.auth import passwd;print(passwd(input()))" > \
    "/app/jupyter/config/jupyter.token"