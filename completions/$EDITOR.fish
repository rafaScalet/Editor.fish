function __complete_editor
    if set -q CDPATH
        for dir in $CDPATH/*
            for subdir in $dir
                echo (string replace "$HOME" "~" "$subdir")
            end
        end
    end
end

complete --command $EDITOR --arguments "(__complete_editor)" --no-files --description "Directory from CDPATH"
