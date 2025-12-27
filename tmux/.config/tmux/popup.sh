#!/bin/bash

# https://madprofessorblog.org/articles/creating-a-tmux-keybinding-for-pop-up-sessions/

width=${2:-80%}
height=${2:-80%}
if [ "$(tmux display-message -p -F "#{session_name}")" = "p" ]; then
  tmux detach-client
else
  tmux popup -d '#{pane_current_path}' -xC -yC -w$width -h$height -E "tmux attach -t p || tmux new -s p"
fi
