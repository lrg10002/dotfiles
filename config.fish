function mkcdir
    mkdir $argv[1]
    cd $argv[1]
end

export TERM="xterm-256color"

function tm
    if [ (count $argv) -lt 1 ]
        echo "Use \"tm help\" to display help."
    else if [ $argv[1] = "n" ]
        tmux new -s $argv[2]
    else if [ $argv[1] = "a" ]
        tmux a -t $argv[2]
    else if [ $argv[1] = "ls" ]
        tmux ls
    else if [ $argv[1] = "d" -o $argv[1] = "k" -o $argv[1] = "r" ]
        tmux kill-session -t $argv[2]
    else if [ $argv[1] = "h" -o $argv[1] = "help" ]
        echo "tm - tmux alias"
        echo "  n <session>   - Create a new session"
        echo "  a <session>   - Attatch to a session"
        echo "  ls            - List all sessions"
        echo "  d|k <session> - Delete a session"
        echo "  h|help        - Display help"
    end
end

function upto
    set expression $argv[1]
    if [ -z "$expression" ]
        echo "A folder must be provided." >&2
        return 1
    end

    set current_folder (pwd)
    set matched_dir ""
    set matching true

    while [ "$matching" = true ]
        string match -r "$expression" "$current_folder" >/dev/null
        set mstatus $status
        if [ $mstatus -eq 0 ]
            set matched_dir "$current_folder"
            set current_folder (dirname $current_folder)
        else
            set matching false
        end
    end

    if [ -n "$matched_dir" ]
        cd $matched_dir
    else
        echo "No match." >&2
        return 1
    end
end
