export GPG_TTY=$(tty)
export ZSH="/home/teixeira/.oh-my-zsh"
export EDITOR=nvim
export VISUAL=nvim

ZSH_THEME="fire"

plugins=(
    git
    zsh-syntax-highlighting
    zsh-autosuggestions
    zsh-completions
)

alias vim=nvim
alias gs="git status"
alias ga="git add"
alias gc="git commit"
alias gp="git push"
alias spot="mvn spotless:apply"

source $ZSH/oh-my-zsh.sh
eval "$(zoxide init --cmd cd zsh)"
