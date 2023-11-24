#!/bin/bash

cd ~ && mkdir -p Documents Downloads Software Workspace
git clone --depth=1  https://github.com/preservim/nerdtree.git ~/.vim/pack/vendor/start/nerdtree
git clone --depth=1  https://github.com/preservim/tagbar.git ~/.vim/pack/vendor/start/tagbar
git clone --depth=1  https://github.com/jiangmiao/auto-pairs.git ~/.vim/pack/vendor/start/auto-pairs
