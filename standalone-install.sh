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
pip install --user neovim
pip3 install --user neovim
# Common configuration
./common-install.sh
