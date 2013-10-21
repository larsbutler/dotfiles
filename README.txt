To set this up in your environment:

    - clone this repo to somewhere
    - ln -s /path/to/dotfiles/.vim ~/.vim
    - ln -s /path/to/dotfiles/.vimrc ~/.vimrc
    - Edit your ~/.bash_profile and add the following:
        cd /path/to/dofiles
        source .bootstrap.bash
        cd -
