#!/bin/ash

# Start tmux server
#tmux
# Create tmux session
tmux new-session -d -s rtr_mon

# Split window into 3 panes
tmux split-window -v
tmux split-window -v

# Resize panes to exact percentages
tmux select-pane -t 0
tmux resize-pane -y 50%  # Pane 0 gets 50%

tmux select-pane -t 1
tmux resize-pane -y 20%  # Pane 1 gets 20%

# Run specific commands
tmux send-keys -t 0 'iftop -b -P -i eth1' Enter
tmux send-keys -t 1 'logread -f' Enter

# Explicitly select pane 2 (bottom pane) before attaching
tmux select-pane -t 2

# Attach to the session with focus on pane 2
tmux attach-session -t rtr_mon
