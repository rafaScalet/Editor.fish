function __complete_editor
    if set -q CDPATH
        for dir in $CDPATH/*
            string replace $HOME "~" $dir
        end
    end
end

set -l editors nvim code vim vi nano codium $EDITOR

for editor in $editors
    complete --command $editor --arguments "(__complete_editor)" --condition __fish_use_subcommand --no-files --description "Directory from CDPATH"
end
