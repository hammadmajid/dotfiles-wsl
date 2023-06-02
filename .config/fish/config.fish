if status is-interactive
    # Commands to run in interactive sessions can go here
end

# brew
set -gx PATH /home/linuxbrew/.linuxbrew/bin $PATH

# show system info on startup
neofetch

# oh-my-posh
oh-my-posh init fish --config /home/hammad/.config/fish/prompt.omp.json | source


# start tmux
tmux

# set py to python3
alias py="python3"

# set cl to clear
alias cl="clear -x"

# use catppuccin mocha theme for gitui
alias gitui="gitui -t mocha.ron"
