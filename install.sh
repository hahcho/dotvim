vim_dotfiles_dir=$( cd "$( dirname "$0" )" && pwd )

# Link all vim configuration files
ln -s $vim_dotfiles_dir/.vimrc ~/.vimrc
ln -s $vim_dotfiles_dir/.vim ~/.vim

# Install vim plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
