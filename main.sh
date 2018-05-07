bash install_dependencies.sh
bash install_vim.sh
bash install_fonts.sh

if [ -f ~/.vimrc ]; then
    mv .vimrc .vimrc-old
fi

bash install_dotfiles.sh
bash install_plugins.sh
