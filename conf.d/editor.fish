set -q editor_abbr; or set -g editor_abbr ed
set -q editor_bind; or set -g editor_bind e
set -q lazygit_abbr; or set -g lazygit_abbr lzg
set -q lazygit_bind; or set -g lazygit_bind g
set -q lazydocker_abbr; or set -g lazydocker_abbr lzd
set -q lazydocker_bind; or set -g lazydocker_bind d

abbr --add $editor_abbr (__expand_editor_abbr $editor_additional_args)
abbr --add $editor_abbr. (__expand_editor_abbr . $editor_additional_args)

abbr --add $lazygit_abbr "lazygit $lazygit_additional_args"

abbr --add $lazydocker_abbr "lazydocker $lazydocker_additional_args"

bind --mode insert "ctrl-shift-$editor_bind" "__expand_editor_bind . $editor_additional_args"
bind --mode default "ctrl-shift-$editor_bind" "__expand_editor_bind . $editor_additional_args"

bind --mode insert "ctrl-alt-$editor_bind" "__expand_editor_bind $editor_additional_args"
bind --mode default "ctrl-alt-$editor_bind" "__expand_editor_bind $editor_additional_args"

bind --mode insert "ctrl-alt-$lazygit_bind" "lazygit $lazygit_additional_args"
bind --mode default "ctrl-alt-$lazygit_bind" "lazygit $lazygit_additional_args"

bind --mode insert "ctrl-alt-$lazydocker_bind" "lazydocker $lazydocker_additional_args"
bind --mode default "ctrl-alt-$lazydocker_bind" "lazydocker $lazydocker_additional_args"

bind --mode insert ctrl-alt-r fish_reload
bind --mode default ctrl-alt-r fish_reload
