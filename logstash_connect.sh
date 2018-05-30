#!/bin/bash

if ! tmux has-session -t logstash-connect
then
	tmux new -s logstash-connect -d
	tmux rename-window -t logstash-connect logstash

	tmux send-keys -t logstash-connect 'ssh -i ~/DRNVirginia.pem ubuntu@54.88.103.214' C-m
	tmux split-window -h
	tmux send-keys -t logstash-connect 'ssh -i ~/DRNVirginia.pem ubuntu@18.208.29.112' C-m
	tmux select-pane -t 0
	tmux split-window -v
	tmux send-keys -t logstash-connect 'ssh -i ~/DRNVirginia.pem ubuntu@35.170.240.215' C-m
	tmux select-pane -t 2
	tmux split-window -v
	tmux send-keys -t logstash-connect 'ssh -i ~/DRNVirginia.pem ubuntu@54.173.184.184' C-m

	tmux new-window -t logstash-connect
	tmux rename-window -t logstash-connect nginx
	tmux send-keys -t logstash-connect 'ssh -i ~/DRNVirginia.pem ubuntu@34.192.225.10' C-m

	tmux select-window -t logstash-connect:0

	tmux attach -t logstash-connect
else
	tmux attach -t logstash-connect
fi


