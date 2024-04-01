export GPG_TTY=$(tty)
export ZSH="/home/teixeira/.oh-my-zsh"
export EDITOR=nvim
export VISUAL=nvim
export JDTLS_JVM_ARGS="-javaagent:$HOME/.local/share/java/lombok.jar"
export PATH="$PATH:$(go env GOBIN):$(go env GOPATH)/bin"
export TERM='xterm-256color'
export JSII_SILENCE_WARNING_UNTESTED_NODE_VERSION=1
export PATH="$HOME/.tmuxifier/bin:$PATH"
eval "$(tmuxifier init -)"

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
alias nt="st &"
alias lss="lsd -aF"

source $ZSH/oh-my-zsh.sh
eval "$(zoxide init --cmd cd zsh)"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# pnpm
export PNPM_HOME="/home/teixeira/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end


# Load Angular CLI autocompletion.
source <(ng completion script)
