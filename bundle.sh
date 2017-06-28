#!/usr/bin/env sh
eval `ssh-agent -s`

/usr/local/bundle/bin/bundle $@
