Installation
------------

````bash
# bring in dotfile configs from github
cd ~
git clone git@github.com:topliceanu/dotfiles.git
# save original files
cp ~/.bashrc ~/.bashrc.original
cp ~/.vimrc ~/.vimrc.original
cp ~/.gitconfig ~/.gitconfig.original
rm ~/.bashrc
# symlink the new ones over the old ones
ln -s ~/dotfiles/.bashrc ~/.bashrc
ln -s ~/dotfiles/.vimrc ~/.vimrc
ln -s ~/dotfiles/.gitconfig ~/.gitconfig
# install vim colors
ln -s -t ~/.vim/ ~/dotfiles/colors
# restart system or source files
````
