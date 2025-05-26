#!/usr/bin/env zsh
i3-msg 'workspace 2'
sleep 1
i3-msg 'exec wezterm'
sleep 1
i3-msg 'workspace 3'
sleep 1
i3-msg 'exec google-chrome-stable'
sleep 1
i3-msg 'workspace 2'

