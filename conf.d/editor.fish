set -q editor_abbr; or set -g editor_abbr ed

abbr --add $editor_abbr (__expand_editor $editor_aditional_args)
abbr --add $editor_abbr. (__expand_editor . $editor_aditional_args)
