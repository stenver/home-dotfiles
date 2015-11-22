# Path to your oh-my-zsh installation.
export ZSH=/Users/stenver/.oh-my-zsh
alias vim=nvim

ZSH_THEME="robbyrussell"

plugins=(git autojump)

source $ZSH/oh-my-zsh.sh

function killruby(){
    ps aux | grep ruby | awk '{print $2}' | xargs kill -9;
}
function killcoffee(){
    ps aux | grep coffee | awk '{print $2}' | xargs kill -9;
}

function killnode(){
    ps aux | grep node | awk '{print $2}' | xargs kill -9;
}
function killjava(){
    ps aux | grep java | awk '{print $2}' | xargs kill -9;
}

export NVM_DIR="/Users/stenver/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

PATH="/Users/stenver/Qt/5.4/clang_64/bin:$PATH"

# Read secrets
source $HOME/.secrets

export JAVA_HOME=$(/usr/libexec/java_home)
export GOPATH=$HOME/go
export GOROOT=/usr/local/go
export EC2_HOME=/usr/local/ec2/ec2-api-tools-1.7.5.1
export SCALA_HOME=/Users/stenver/scala/scala-2.11.7

export PATH="$PATH:$HOME/bin"
export PATH="$PATH:$SCALA_HOME/bin"
export PATH=$HOME/salemove/kubernetis/platforms/darwin/amd64:$PATH
export PATH="$PATH:/usr/local/bin"
export PATH=$PATH:$GOPATH/bin
export PATH=$HOME/go/src/k8s.io/kubernetes/_output/local/bin/darwin/amd64:$PATH
export PATH=$PATH:$EC2_HOME/bin
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
