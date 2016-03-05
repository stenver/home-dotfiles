ZSH_THEME="robbyrussell"

export ZSH=$HOME/.oh-my-zsh
source $ZSH/oh-my-zsh.sh
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


PATH="$HOME/stenver/Qt/5.4/clang_64/bin:$PATH"

# Read secrets
source $HOME/.secrets

export PATH="$HOME/stenver/.rvm/gems/ruby-2.2.3/bin:/usr/local/heroku/bin:$HOME/stenver/go/src/k8s.io/kubernetes/_output/local/bin/darwin/amd64:$HOME/stenver/salemove/kubernetis/platforms/darwin/amd64:$HOME/stenver/Qt/5.4/clang_64/bin:$HOME/stenver/.nvm/versions/node/v5.5.0/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/go/bin:$HOME/stenver/bin:$HOME/stenver/scala/scala-2.11.7/bin:/usr/local/bin:$HOME/stenver/go/bin:/usr/local/ec2/ec2-api-tools-1.7.5.1/bin:$HOME/stenver/.rvm/bin:/usr/local/Cellar/fzf/HEAD/bin"

if [[ "$OSTYPE" == "linux-gnu" ]]; then
    export JAVA_HOME=/usr/lib/jvm/java-8-oracle
elif [[ "$OSTYPE" == "darwin"* ]]; then
  export JAVA_HOME=$(/usr/libexec/java_home)
fi
export GOPATH=$HOME/go
export GOROOT=/usr/local/go
export EC2_HOME=/usr/local/ec2/ec2-api-tools-1.7.5.1
export SCALA_HOME=$HOME/stenver/scala/scala-2.11.7

export PATH="$PATH:/usr/local/heroku/bin"
export PATH=$PATH:/usr/local/sbin
export PATH="$PATH:$HOME/bin"
export PATH="$PATH:$SCALA_HOME/bin"
export PATH=$PATH:$HOME/salemove/kubernetis/platforms/darwin/amd64
export PATH="$PATH:/usr/local/bin"
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$HOME/go/src/k8s.io/kubernetes/_output/local/bin/darwin/amd64
export PATH=$PATH:$EC2_HOME/bin

[ -f ~/.fzf.zsh  ] && source ~/.fzf.zsh

export NVM_DIR="/Users/stenver/.nvm"
[ -s "$NVM_DIR/nvm.sh"  ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[[ -s "$HOME/.rvm/scripts/rvm"  ]] && source "$HOME/.rvm/scripts/rvm"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

# nvm use 5.6

__git_files () {
  _wanted files expl 'local files' _files
}
