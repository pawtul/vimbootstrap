# compile vim for python3
git clone https://github.com/vim/vim.git

cp -r vim vim3

cd vim3
 ./configure --with-features=huge --enable-perlinterp=yes --enable-rubyinterp=yes --enable-python3interp=yes --enable-multibyte --enable-luainterp=yes --with-vim-name=vim3
make
sudo make install

cd ..

rm -rf vim3


# do the same for vim 2
cd vim
 ./configure --with-features=huge --enable-perlinterp=yes --enable-rubyinterp=yes --enable-pythoninterp=yes --enable-multibyte --enable-luainterp=yes --with-vim-name=vim2
make
sudo make install

cd ..

rm -rf vim

if [[ ! `cat ~/.bashrc | grep "alias vim"` ]]; then
    echo "alias vim='vim3'" >> ~/.bashrc
fi

