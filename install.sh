vim_dotfiles_dir=$( cd "$( dirname "$0" )" && pwd )

# Install all plugins
cd $vim_dotfiles_dir && git submodule update --init --recursive

# Link all the files
ln -s $vim_dotfiles_dir/.vimrc $HOME/.vimrc
ln -s $vim_dotfiles_dir/.vim $HOME/.vim
