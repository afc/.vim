# Setup Pathogen to manage your plugins
mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -so ~/.vim/autoload/pathogen.vim https://raw.githubusercontent.com/tpope/vim-pathogen/master/autoload/pathogen.vim

# Settings for vim-powerline
cd ~/.vim/bundle
git clone git://github.com/Lokaltog/vim-powerline.git


# Settings for ctrlp
cd ~/.vim/bundle
git clone https://github.com/kien/ctrlp.vim.git


# Settings for python-mode
# Note: I'm no longer using this. Leave this commented out
# and uncomment the part about jedi-vim instead
## cd ~/.vim/bundle
## git clone https://github.com/klen/python-mode

# Settings for jedi-vim
cd ~/.vim/bundle
git clone git://github.com/davidhalter/jedi-vim.git
pip install jedi

# Python folding
mkdir -p ~/.vim/ftplugin
wget -O ~/.vim/ftplugin/python_editing.vim http://www.vim.org/scripts/download_script.php?src_id=5492

