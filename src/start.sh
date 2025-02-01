#!/usr/bin/env bash

# Use libtcmalloc for better memory management
TCMALLOC="$(ldconfig -p | grep -Po "libtcmalloc.so.\d" | head -n 1)"
export LD_PRELOAD="${TCMALLOC}"

# Правильная настройка путей Python
export PYTHONPATH="/ComfyUI:/ComfyUI/src:${PYTHONPATH}"

# Запускаем handler
python3 -u /ComfyUI/src/handler.py