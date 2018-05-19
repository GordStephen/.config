if not set -q TMUX; and not test $TERM = "linux"

    # Launch kak session if not already running
    if not kak -l | grep "^main\$"
        kak -d -s main
    end

    # Launch or reattach tmux session
    exec tmux new-session -As 0

end

# Base16 string default
set fish_color_quote green

alias mpv "mpv -vo=drm -ao=alsa"
