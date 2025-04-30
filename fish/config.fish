set cur_basename (basename $PWD)

set PATH $PATH /opt/homebrew/bin

set GOPATH $HOME/go
set PATH $PATH $GOPATH/bin
set PATH $PATH $HOME/scripts

set KUBE_EDITOR nvim

status --is-interactive; and source (rbenv init -|psub)

status is-login; and pyenv init --path | source
status is-interactive; and pyenv init - | source

direnv hook fish | source

source $HOME/.config/fish/system.fish
source $HOME/.aliases.sh
source $HOME/.config/fish/kubectl_aliases.fish
