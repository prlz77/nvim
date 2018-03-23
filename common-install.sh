# Backup dirs
mkdir undodir
mkdir backup
# vim-plug
curl -fLo ./autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
nvim -c :PlugInstall

