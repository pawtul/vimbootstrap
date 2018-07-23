# install vim from system repositories
sudo apt-get install -y vim-gtk3

# if you want vim with python2 comme
exit 0

compile_vim=2

git clone https://github.com/vim/vim.git

if [[ $compile_vim -eq 3 ]];
then
    # compile vim for python3

    cp -r vim vim3

    cd vim3
    ./configure --with-features=huge --enable-perlinterp=yes --enable-rubyinterp=yes --enable-python3interp=yes --enable-multibyte --enable-luainterp=yes --with-vim-name=vim3
    make
    sudo make install

    if [[ ! `cat ~/.bashrc | grep "alias vim"` ]]; then
        echo "alias vim='vim3'" >> ~/.bashrc
    fi

    cd ..

    rm -rf vim3
fi


# do the same for vim 2
if [[ $compile_vim -eq 2 ]];
then
    cd vim
    ./configure --with-features=huge --enable-perlinterp=yes --enable-rubyinterp=yes --enable-pythoninterp=yes --enable-multibyte --enable-luainterp=yes --with-vim-name=vim2
    make
    sudo make install

    cd ..
fi

rm -rf vim

