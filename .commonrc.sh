export PATH=~/.bin:$PATH

# Java
export JAVA_HOME=~/Software/jdk/Contents/Home
export CLASSPATH=.:$JAVA_HOME/lib:$JAVA_HOME/lib/tools.jar
export PATH=$JAVA_HOME/bin:$JAVA_HOME/jre/bin:$PATH

# Maven
export MAVEN_HOME=~/Software/apache-maven-3.6.3
export PATH=$PATH:$MAVEN_HOME/bin

# Go
export GOROOT=~/Software/go
export GOPAHT=~/go
export GO111MODULE=on
export GOPROXY="https://goproxy.io,direct"
export GOPRIVATE="coding.jd.com"
export PATH=$GOROOT/bin:$GOPAHT/bin:$PATH

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
alias release="~/Workspace/packages/release.sh"
