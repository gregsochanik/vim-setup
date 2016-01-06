curl -fLo ~/.vim/autoload/plug.vim --create-dirs     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

cp .vimrc ~/.vimrc

vim +PlugInstall +qall

apt-get install -y CMake python-dev 

cd ~/.vim/plugged/YouCompleteMe/
./install.py --omnisharp-completer --tern-completer

