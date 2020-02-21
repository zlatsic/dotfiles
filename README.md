# Dotfiles

Dotfiles for various applications I use. To use, make a symlink from your home
directory to subdirectories or files in the clone of this repo.

## vim

Setup for base usage:
1. Install vim
2. Install [pathogen](https://github.com/tpope/vim-pathogen)
3. Load plugin submodules: `git submodule update --init`

Base usage doesn't cover the ``YouCompleteMe`` plugin for autocompletion as it
needs to be built. To properly install it, follow the [installation
instructions on the plugin
page](https://github.com/ycm-core/YouCompleteMe#installation). 

Plugins used:

* [AutoClose](https://github.com/vim-scripts/AutoClose.git)
* [ctrlp.vim](https://github.com/kien/ctrlp.vim.git)
* [gundo.vim](http://github.com/sjl/gundo.vim.git)
* [indentLine](https://github.com/Yggdroot/indentLine.git)
* [nerdcommenter](https://github.com/scrooloose/nerdcommenter.git)
* [nerdtree](https://github.com/scrooloose/nerdtree.git)
* [nerdtree-git-plugin](https://github.com/Xuyuanp/nerdtree-git-plugin.git)
* [papercolor-theme](https://github.com/NLKNguyen/papercolor-theme.git)
* [python-syntax](https://github.com/hdima/python-syntax.git)
* [syntastic](https://github.com/vim-syntastic/syntastic.git)
* [ultisnips](https://github.com/SirVer/ultisnips.git)
* [vim-airline](https://github.com/vim-airline/vim-airline.git)
* [vim-gitgutter](https://github.com/airblade/vim-gitgutter.git)
* [vim-monokai-tasty](https://github.com/patstockwell/vim-monokai-tasty.git)
* [vim-multiple-cursors](https://github.com/terryma/vim-multiple-cursors.git)
* [vim-sensible](https://github.com/tpope/vim-sensible.git)
* [vim-snippets](https://github.com/honza/vim-snippets.git)
* [vim-surround](https://github.com/tpope/vim-surround.git)
* [vim-vue](https://github.com/posva/vim-vue.git)
* [YouCompleteMe](https://github.com/ycm-core/YouCompleteMe.git)

## mutt

Dotfiles for the mutt setup. The initial part of the ``muttrc`` file is made
like a template for connecting to an office365 setup (found
[here](https://github.com/ork/mutt-office365/blob/master/muttrc) and slightly
altered it according to my needs). Create a user file by filling out the [user
template file](./mutt/user_template) and create a text file named ``signature``
with the desired signature. The contacts are stored in the ``contacts.list``
file this can be created manually or automatically when you store the first
alias.  The muttrc also assumes there will be a subfolder inside the inbox
named ``mailing-list``, that mailbox might not work if you don't have this
folder set up.

Additional dependencies are used by mailcap. For HTML emails,
[lynx](https://linux.die.net/man/1/lynx) is used for initial email preview.
Alternatively, by pressing ``\<C-m\>`` on an HTML attachment, the email will be
opened in a [chromium](https://chromium.woolyss.com/download/) window. For
videos, [vlc](https://www.videolan.org/vlc/) is used and for pdf files it's
[zathura](https://wiki.archlinux.org/index.php/Zathura).

## tmux

Not much to say here, the options are mostly taken from [this blog
post](https://www.hamvocke.com/blog/a-guide-to-customizing-your-tmux-conf/).
