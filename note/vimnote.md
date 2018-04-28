https://www.zhihu.com/question/19634223
vim --version
sudo apt-get remove vim-tiny
apt-get update
apt-get intall vim

```shell
:python3 import sys; print(sys.version)
```
mkdir -p ~/.vim/bundle
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

vim ~/.vimrc
```shell
set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
Plugin 'jlanzarotta/bufexplorer'

" All of your Plugins must be added before the following line
call vundle#end()            " required

filetype plugin indent on    " required
```

:PluginInstall

```command
:sv file
:vs file

:b <buffer name or number>
:ls
:bd, bw
```


