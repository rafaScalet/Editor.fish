set -q lazydocker_abbr; or set -g lazydocker_abbr lzd
set -q lazydocker_bind; or set -g lazydocker_bind d

abbr --add $lazydocker_abbr "lazydocker $lazydocker_additional_args"

bind --mode insert "ctrl-alt-$lazydocker_bind" "lazydocker $lazydocker_additional_args"
bind --mode default "ctrl-alt-$lazydocker_bind" "lazydocker $lazydocker_additional_args"
