#!/bin/bash

cd $(dirname $0)

SUDO=""
PKG=""
if apt -v > /dev/null ; then
  PKG="apt"
  cat > /etc/apt/sources.list << EOF
deb http://mirrors.tuna.tsinghua.edu.cn/ubuntu/ noble main restricted universe multiverse
deb http://mirrors.tuna.tsinghua.edu.cn/ubuntu/ noble-updates main restricted universe multiverse
deb http://mirrors.tuna.tsinghua.edu.cn/ubuntu/ noble-backports main restricted universe multiverse

deb http://security.ubuntu.com/ubuntu/ noble-security main restricted universe multiverse
EOF
  ${SUDO} apt update
elif yum -v > /dev/null ; then
  PKG="yum"
  ${SUDO} sed -e "s|^mirrorlist=|#mirrorlist=|g" \
    -e "s|^#baseurl=http://mirror.centos.org/centos/\$releasever|baseurl=http://mirrors.tuna.tsinghua.edu.cn/centos-vault/7.9.2009|g" \
    -e "s|^#baseurl=http://mirror.centos.org/\$contentdir/\$releasever|baseurl=http://mirrors.tuna.tsinghua.edu.cn/centos-vault/7.9.2009|g" \
    -i.bak \
    /etc/yum.repos.d/CentOS-*.repo
fi

${SUDO} ${PKG} install -y git vim zsh gcc make curl wget tmux

mkdir -p ~/Documents ~/Downloads ~/Software ~/Workspace ~/.bin
cp gom nom docker-tags ~/.bin
cp .commonrc.sh .tmux.conf .vimrc ~
source ~/.commonrc.sh

cd ~/Downloads

wget https://go.dev/dl/go1.21.12.linux-amd64.tar.gz
tar -xf go1.21.12.linux-amd64.tar.gz && mv go ~/Software/go1.21.12
gom go1.21.12

wget https://nodejs.org/dist/v18.20.4/node-v18.20.4-linux-x64.tar.gz
tar -xf node-v18.20.4-linux-x64.tar.gz && mv node-v18.20.4-linux-x64 ~/Software
nom node-v18.20.4-linux-x64

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source "$HOME/.cargo/env"

git clone --depth=1 https://github.com/preservim/nerdtree.git ~/.vim/pack/vendor/start/nerdtree
git clone --depth=1 https://github.com/preservim/tagbar.git ~/.vim/pack/vendor/start/tagbar
git clone --depth=1 https://github.com/jiangmiao/auto-pairs.git ~/.vim/pack/vendor/start/auto-pairs

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo 'source ~/.commonrc.sh' >> ~/.zshrc
