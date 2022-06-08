alias o="xdg-open"
alias s="source"
alias mutt="neomutt"
alias fmutt="mutt -F $HOME/.mutt/faks/muttrc"
alias gmutt="mutt -F $HOME/.mutt/gmail/muttrc"
alias drawio="/opt/draw.io/drawio"

set cur_basename (basename $PWD)

set PATH $PATH $HOME/scripts /usr/lib/postgresql/11/bin/
set PATH $PATH $HOME/.local/bin

status --is-interactive; and source (rbenv init -|psub)

status is-login; and pyenv init --path | source
status is-interactive; and pyenv init - | source

direnv hook fish | source
