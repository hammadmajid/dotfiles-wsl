if status is-interactive
    # Commands to run in interactive sessions can go here
end

# brew
set -gx PATH /home/linuxbrew/.linuxbrew/bin $PATH

# show system info on startup
neofetch

# start tmux
tmux

# set py to python3
alias py="python3"

# set cl to clear
alias cl="clear -x"

# use catppuccin mocha theme for gitui
alias gitui="gitui -t mocha.ron"

# alias ls to exa
alias ls="exa --all --classify --icons --group-directories-first"

# use startship promt
starship init fish | source
