set -q editor_abbr; or set -g editor_abbr ed
set -q editor_bind; or set -g editor_bind e

abbr --add $editor_abbr (__expand_editor_abbr $editor_additional_args)
abbr --add $editor_abbr. (__expand_editor_abbr . $editor_additional_args)

bind --mode insert "ctrl-shift-$editor_bind" "__expand_editor_bind . $editor_additional_args"
bind --mode default "ctrl-shift-$editor_bind" "__expand_editor_bind . $editor_additional_args"

bind --mode insert "ctrl-alt-$editor_bind" "__expand_editor_bind $editor_additional_args"
bind --mode default "ctrl-alt-$editor_bind" "__expand_editor_bind $editor_additional_args"
