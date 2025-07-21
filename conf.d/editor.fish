set -q editor_abbr; or set -g editor_abbr ed
set -q editor_bind; or set -g editor_bind e
set -q lazygit_abbr; or set -g lazygit_abbr lzg
set -q lazygit_bind; or set -g lazygit_bind g

abbr --add $editor_abbr (__expand_editor_abbr $editor_additional_args)
abbr --add $editor_abbr. (__expand_editor_abbr . $editor_additional_args)

abbr --add $lazygit_abbr (__expand_lazygit_abbr $lazygit_additional_args)

bind --mode insert "ctrl-shift-$editor_bind" "__expand_editor_bind . $editor_additional_args"
bind --mode default "ctrl-shift-$editor_bind" "__expand_editor_bind . $editor_additional_args"

bind --mode insert "ctrl-alt-$editor_bind" "__expand_editor_bind $editor_additional_args"
bind --mode default "ctrl-alt-$editor_bind" "__expand_editor_bind $editor_additional_args"

bind --mode insert "ctrl-alt-$lazygit_bind" "__expand_lazygit_bind $lazygit_additional_args"
bind --mode default "ctrl-alt-$lazygit_bind" "__expand_lazygit_bind $lazygit_additional_args"
