# @fish-lsp-disable 4005
function __complete_editor
    if set -q CDPATH
        for dir in $CDPATH/*
            for subdir in $dir
                echo (string replace "$HOME" "~" "$subdir")
            end
        end
    end
end

complete --command vi --arguments "(__complete_editor)" --no-files --description "Directory from CDPATH"
complete --command vim --arguments "(__complete_editor)" --no-files --description "Directory from CDPATH"
complete --command nvim --arguments "(__complete_editor)" --no-files --description "Directory from CDPATH"
complete --command nano --arguments "(__complete_editor)" --no-files --description "Directory from CDPATH"
complete --command micro --arguments "(__complete_editor)" --no-files --description "Directory from CDPATH"
complete --command code --arguments "(__complete_editor)" --no-files --description "Directory from CDPATH"
complete --command codium --arguments "(__complete_editor)" --no-files --description "Directory from CDPATH"
complete --command helix --arguments "(__complete_editor)" --no-files --description "Directory from CDPATH"
complete --command emacs --arguments "(__complete_editor)" --no-files --description "Directory from CDPATH"
