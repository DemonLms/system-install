export PATH=~/.bin:$PATH

# Java
export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64
export CLASSPATH=.:$JAVA_HOME/lib
export PATH=$JAVA_HOME/bin:$PATH

# Maven
export MAVEN_HOME=~/Software/apache-maven-3.6.3
export PATH=$PATH:$MAVEN_HOME/bin

# Go
export GOROOT=~/Software/go
export GOPATH=~/go
export GO111MODULE=auto
export GOPROXY="https://goproxy.io,direct"
export GOPRIVATE=""
export PATH=$GOROOT/bin:$GOPATH/bin:$PATH

# Node
export NODE_HOME=~/Software/node
export NODE_PREFIX=$NODE_HOME/node_global
export NODE_CACHE=$NODE_HOME/node_cache
export NODE_REGISTRY="https://registry.npmmirror.com"
export PATH=$NODE_HOME/bin:$NODE_PREFIX/bin:$PATH

# Rust
source ~/.cargo/env

# Brew
export HOMEBREW_INSTALL_FROM_API=1
export HOMEBREW_API_DOMAIN="https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles/api"
export HOMEBREW_BOTTLE_DOMAIN="https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles"
export HOMEBREW_BREW_GIT_REMOTE="https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/brew.git"
export HOMEBREW_CORE_GIT_REMOTE="https://mirrors.tuna.tsinghua.edu.cn/git/homebrew/homebrew-core.git"

# MySQL
alias mysql="mysql --default-character-set=utf8 --auto-rehash"

# Alias
alias todo="vim ~/Documents/todo.md" 
alias http-server="python3 -m http.server -d"
