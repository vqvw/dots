#!/bin/sh

for project_dir in ~/Projects/*; do
  if [ -d "$project_dir" ]; then
    dir_name=$(basename "$project_dir")
    tmux new-session -s "$dir_name" -c "$project_dir" -d
  fi
done
