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

Plugins used are listed in the ``/vim/bundle`` directory as submodules.

``ln -s ~/path/to/repo/vim ~/.vim``

## mutt

Dotfiles for the mutt setup. Does not contain complete muttrc files as some of
them contain email information I'd rather not make public, but the
``muttrc_base`` file can be sourced in order to pick up the settings I use.

Additional dependencies are used by mailcap. For HTML emails,
[lynx](https://linux.die.net/man/1/lynx) is used for initial email preview.
Alternatively, by pressing ``\<C-m\>`` on an HTML attachment, the email will be
opened in a [chromium](https://chromium.woolyss.com/download/) window. For
videos, [vlc](https://www.videolan.org/vlc/) is used and for pdf files it's
[zathura](https://wiki.archlinux.org/index.php/Zathura).

``ln -s ~/path/to/repo/mutt ~/.mutt``

## tmux

The options are mostly taken from [this blog
post](https://www.hamvocke.com/blog/a-guide-to-customizing-your-tmux-conf/).

``ln -s ~/path/to/repo/tmux ~/.tmux``
``ln -s ~/path/to/repo/tmux.conf ~/.tmux.conf``

## fish

``ln -s ~/path/to/repo/fish ~/.config/fish``

## i3

``ln -s ~/path/to/repo/i3 ~/.config/i3``

## polybar

``ln -s ~/path/to/repo/polybar ~/.config/polybar``
