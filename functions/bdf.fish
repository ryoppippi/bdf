not test -n "$BDF_SELECTOR" && set -x BDF_SELECTOR fzf
not test -n "$BDF_LS" && set -x BDF_LS "lsd -A"

function bdf
    set -l current_directory (pwd)
    set -l parent_directories
    set -l selected_directory

    set current_parts (string split / $current_directory)

    for i in (seq (count $current_parts) -1 2)
        set parent_directories[$i] (string join / $current_parts[1..$i])
    end

    set parent_directories[1] /
    set parent_directories $parent_directories[-1..1]
    set -e parent_directories[1]

    set -l selected_path (echo (string join ' ' $parent_directories) |  tr ' ' '\n' | $BDF_SELECTOR --preview "$BDF_LS {}" --select-1)

    test -n "$selected_path" && cd $selected_path
end
