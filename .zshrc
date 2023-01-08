export ZSH="/Users/think/.oh-my-zsh"

ZSH_THEME="bigpath"
DISABLE_AUTO_UPDATE="true"

plugins=(git golang zsh-completions docker zsh-autosuggestions zsh-completions
    zsh-history-substring-search zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

alias ga='git add --all'
alias gd='git diff'
alias gs='git status'
alias gc='git commit -m ${1}'
alias gl='git log --date-order --all --graph --format="%C(green)%h%Creset %C(yellow)%an%Creset %C(blue bold)%ar%Creset %C(red bold)%d%Creset%s"'
alias vim='nvim'
alias la='ls -lhaG --color'
alias ls='ls --color=auto'
alias lh='ls -lh --color'

PATH=$PATH:$HOME/Users/think/Documents/dotfiles/bin

export EDITOR=nvim
export HISTTIMEFORMAT="%T "
export HISTIGNORE='nvim:gs:ls:la:history'

export BAT_THEME=OneHalfLight
export AWS_DEFAULT_PROFILE=default

#export PATH="$PATH:$(yarn global bin)"
#export GOPRIVATE="<company_gitlab_url>"
export GOPATH="$HOME/.go"
export GOPROXY=https://proxy.golang.org,direct
export PATH="$PATH:$HOME/.go/bin"
export PATH="$PATH:$HOME/.cargo/bin"
export PATH="$PATH:/opt/homebrew/bin"
export NVM_LAZY_LOAD=true
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


notes() {
  nvim "$HOME/Documents/dev/dotfiles/notes.notes"
}

cat_notes() {
  bat "$HOME/Documents/dev/dotfiles/notes.notes"
}

export CARGO_NET_GIT_FETCH_WITH_CLI=true

. "$HOME/.cargo/env"


# pnpm
export PNPM_HOME="/Users/think/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end