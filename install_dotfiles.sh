git clone https://github.com/pawtul/dotfiles.git

# backup old files
if [[ -e ~/.vimrc ]]; then
    mv ~/.vimrc ~/.vimrc-old
fi
if [[ -e ~/.config/flake8 ]]; then
    mv ~/.config/flake8 ~/.config/flake8-old
fi
if [[ -e ~/.config/pylintrc ]]; then
    mv ~/.config/pylintrc ~/.config/pylintrc-old
fi

cp dotfiles/.vimrc ~
cp dotfiles/flake8 ~/.config/
cp dotfiles/pylintrc ~/.config/

rm -rf dotfiles
