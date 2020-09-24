byobu new-session -d -s Server
byobu select-pane -t 0
byobu send-keys 'speedometer -t eth0' Enter
byobu split-window
byobu send-keys 'sendfile 9000' Enter
byobu split-window -h
byobu
