set -q reload_bind; or set -g reload_bind r

bind --mode insert "ctrl-alt-$reload_bind" fish_reload
bind --mode default "ctrl-alt-$reload_bind" fish_reload
