Installation

    git clone git://github.com/abhijeetbhagat/dotvim.git

On Windows:
1. Checkout the repo in $HOME
2. Rename the folder dotvim to vimfiles
3. Launch cmd in an elevated mode and create a symbolic link in the HOME dir:
    mklink _vimrc vimfiles\vimrc

4. Init submodules:
    cd vimfiles
    git submodule init
    git submodule update

Create symlink on Linux:

    ln -s ~/.vim/vimrc ~/.vimrc
