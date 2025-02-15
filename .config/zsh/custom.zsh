open_project() {
    workspace_dir="$HOME/Workspace"

    if [ ! -d "$workspace_dir" ]; then
        echo "Workspace directory does not exists: $workspace_dir"
        exit 1
    fi

    project=$(find "$workspace_dir" -mindepth 2 -maxdepth 3 -type d | fzf --height=30% --border) || return

    cd "$project" || return

    if [ -n "$1" ]; then
        "$1" .
    fi
    
}
