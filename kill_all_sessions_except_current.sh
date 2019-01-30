#!/usr/bin/env bash

echo "Killing all tmux sessions except the currently attached one ..."

tmux ls | grep -v "attached" \
        | cut -d':' -f 1     \
        | xargs -I% tmux kill-session -t  %

echo "Done."

