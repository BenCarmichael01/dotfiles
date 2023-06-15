#:checkhealth nvim_treesitter Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/var/home/ben/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line

export VISUAL=/usr/bin/nvim
export EDITOR="$VISUAL"
export PATH=$PATH:$HOME/.local/bin

alias gdots="/usr/bin/git --git-dir=$HOME/.dots/ --work-tree=$HOME"

alias hconf="nvim ~/.config/hypr/hyprland.conf"
alias wconf="nvim ~/.config/waybar/config"
alias wstyle="nvim ~/.config/waybar/style.css"

__git_files () { 
    _wanted files expl 'local files' _files     
}
