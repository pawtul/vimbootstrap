# compile vim for python3
git clone https://github.com/vim/vim.git

cd vim
 ./configure --with-features=huge --enable-perlinterp=yes --enable-rubyinterp=yes --enable-python3interp=yes --enable-multibyte --enable-luainterp=yes --with-vim-name=vim
make
make install

cd ..

rm -rf vim


# do the same for vim 2
git clone https://github.com/vim/vim.git

cd vim
 ./configure --with-features=huge --enable-perlinterp=yes --enable-rubyinterp=yes --enable-pythoninterp=yes --enable-multibyte --enable-luainterp=yes --with-vim-name=vim2
make
make install

cd ..

rm -rf vim

