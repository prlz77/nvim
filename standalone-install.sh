#!/bin/bash
unset LUA_PATH
unset LUA_CPATH
git clone https://github.com/neovim/neovim/
cd neovim
make -j2 CMAKE_BUILD_TYPE=Release CMAKE_EXTRA_FLAGS="-DCMAKE_INSTALL_PREFIX=$HOME/neovim"
make install
cd ..
rm -r neovim
export PATH="$HOME/neovim/bin:$PATH"
echo "export PATH=\"$HOME/neovim/bin:$PATH\"" >> ~/.bashrc
pip install neovim
# Backup dirs
mkdir undodir
mkdir backup
# vim-plug
curl -fLo ./autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
vim -c :PlugInstall
