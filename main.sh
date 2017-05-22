sudo add-apt-repository ppa:jonathonf/vim
sudo apt-get update
sudo apt-get install vim-gtk3

bash install_fonts.sh

mkdir -p ~/.vim/bundle

git clone https://pawtul@bitbucket.org/pawtul/dotfiles.git

if [ -f ~/.vimrc ]; then
    mv .vimrc .vimrc-old
fi
mv dotfiles/.vimrc ~

cd ~/.vim/bundle

git clone https://github.com/VundleVim/Vundle.vim.git

echo "Your setup is ready."
echo "enter your vim and type :PluginInstall"
echo "install python3 packages: mypy flake8 pylint"

