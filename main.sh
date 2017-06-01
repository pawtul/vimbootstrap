sudo add-apt-repository ppa:jonathonf/vim
sudo apt-get update
sudo apt-get install vim-gtk3
sudo apt-get install ack-grep

sudo python3 -m pip install mypy flake8 pylint isort typing

bash install_fonts.sh

mkdir -p ~/.vim/bundle

git clone https://pawtul@bitbucket.org/pawtul/dotfiles.git

if [ -f ~/.vimrc ]; then
    mv .vimrc .vimrc-old
fi
cp dotfiles/.vimrc ~
cp dotfiles/flake8 ~/.config/
cp dotfiles/pylintrc ~/.config/

cd ~/.vim/bundle

git clone https://github.com/VundleVim/Vundle.vim.git

echo "Your setup is ready."
echo "enter your vim and type :PluginInstall"

