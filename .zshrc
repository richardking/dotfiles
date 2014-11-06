# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

. `brew --prefix`/etc/profile.d/z.sh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias cdbr='cd ~/Projects/br/breport/'
alias cdapi='cd ~/Projects/br/api/'
alias cdti='cd ~/Projects/br/ti/'
alias cdsb='cd ~/Projects/sandbox/'
alias cdp='cd ~/Projects'
alias cdgo='cd ~/Projects/Go'
# alias customvim='/Applications/MacVim.app/Contents/MacOS/vim'
# alias evimrc='mvim ~/.vimrc'
# alias m='mvim .'
alias rf='rspec --tag focus'
alias tmux='TERM=xterm-256color tmux'
gcoo () { git branch | grep -m 1 "$@" | xargs -t git checkout }

alias vim='/Applications/MacVim.app/Contents/MacOS/vim'
alias evimrc='vim ~/.vimrc'
alias ezshrc='vim ~/.zshrc'
alias m='vim .'
alias v='vim'
alias vi='vim'
alias c='~/Projects/connect.sh'
alias spp='tmux source-file ~/.tmux/rdev'

alias dsac='docker stop $(docker ps -a -q)'
alias drmac='docker rm $(docker ps -a -q)'

alias aapl="curl -s \"http://download.finance.yahoo.com/d/quotes.csv?s=aapl&f=l1\""
# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git bundler zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

unsetopt correct
unsetopt correct_all

# Customize to your needs...
export PATH=$HOME/.exenv/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/richardking/.rvm/gems/ree-1.8.7-2012.02/bin:/usr/local/smlnj-110.75/bin

PATH=$PATH:$HOME/.rvm/bin:/usr/local/go/bin # Add RVM to PATH for scripting

# http://stackoverflow.com/questions/10077963/why-wont-macvim-always-use-ruby-1-9-3
# Ensure MacVim has same shell as Terminal
if [[ -a /etc/zshenv ]]; then
  sudo mv /etc/zshenv /etc/zprofile
fi

export DOCKER_HOST=tcp://192.168.59.103:2375

export GOPATH=$HOME/Projects/Go
export PATH=$PATH:$GOPATH/bin

# http://stackoverflow.com/questions/12721890/rvm-doesnt-set-default-ruby-with-zsh
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

setopt auto_cd
cdpath=($HOME/Projects)

eval "$(exenv init -)"
