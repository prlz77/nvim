# Backup dirs
mkdir undodir
mkdir backup
# vim-plug
curl -fLo ./autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
vim -c :PlugInstall
# Fix issues using screen
echo "maptimeout 10" >> ~/.screenrc
echo "term screen-256color" >> ~/.screenrc
echo "export TERM=xterm-256color" >> ~/.bashrc

