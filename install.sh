#!/bin/bash
git submodule update --init --recursive
vimdir=$(pwd)
cd ~
ln -sf ${vimdir}/.vimrc ./
ln -sf ${vimdir}/.vim   ./
vim -c 'PlugInstall' -c 'qa!'
