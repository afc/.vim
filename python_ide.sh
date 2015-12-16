# Prerequesite check
which pip
if [ $? != 0 ]
then
  echo 'Please install pip first. Like using:'
  echo 'sudo apt-get install python-pip'
  exit 1
fi

# Setup Pathogen to manage your plugins
mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -so ~/.vim/autoload/pathogen.vim https://raw.githubusercontent.com/tpope/vim-pathogen/master/autoload/pathogen.vim

# Settings for vim-powerline
pushd ~/.vim/bundle
git clone git://github.com/Lokaltog/vim-powerline.git
popd


# Settings for ctrlp
pushd ~/.vim/bundle
git clone https://github.com/kien/ctrlp.vim.git
popd



# Settings for python-mode
# Note: I'm no longer using this. Leave this commented out
# and uncomment the part about jedi-vim instead
## pushd ~/.vim/bundle
## git clone https://github.com/klen/python-mode
## popd

# Settings for jedi-vim
pushd ~/.vim/bundle
git clone git://github.com/davidhalter/jedi-vim.git
popd
sudo pip install jedi

# Python folding
mkdir -p ~/.vim/ftplugin
wget -O ~/.vim/ftplugin/python_editing.vim http://www.vim.org/scripts/download_script.php?src_id=5492

