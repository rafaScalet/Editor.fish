function __expand_editor_bind
    commandline --replace "$EDITOR $argv"
    commandline --function execute
end
