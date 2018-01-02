mkdir -p ~/.vim/bundle
cd ~/.vim/bundle

git clone https://github.com/VundleVim/Vundle.vim.git

github_base_url=https://github.com/

for plugin in `cat ~/.vimrc | sed -n "s/^Plugin '\(\S*\)' .*$/\1/p"`;
do
    git clone $github_base_url$plugin
done;

#echo "Your setup is ready."
#echo "enter your vim and type :PluginInstall"
