# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt extendedglob nomatch
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/hammad/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Configure starship prompt
eval "$(starship init zsh)"

# cache Rust builds with sccache
RUSTC_WRAPPER="$(which sccache)"

# set the default editor to helix
EDITOR=hx

## aliases
alias ls="exa --grid --icons --group-directories-first"
alias gg="gitui"
alias zj="zellij"
