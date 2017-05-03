# Backup dirs
mkdir undodir
mkdir backup
# vim-plug
curl -fLo ./autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
vim -c :PlugInstall
# Fix input delay with screen
echo "maptimeout 10" >> .screenrc
