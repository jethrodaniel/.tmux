#!/usr/bin/env bash

echo "Killing all tmux sessions with numeric name (except the currently attached one) ..."

tmux ls | grep -v "attached" \
        | cut -d':' -f 1     \
        | grep -P "\d+"      \
        | xargs -I% tmux kill-session -t  %

echo "Done."

