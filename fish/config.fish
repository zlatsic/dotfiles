alias o="xdg-open"
alias s="source"
alias mutt="neomutt"
alias fmutt="mutt -F $HOME/.mutt/faks/muttrc"
alias gmutt="mutt -F $HOME/.mutt/gmail/muttrc"
alias drawio="/opt/draw.io/drawio"

set cur_basename (basename $PWD)
source $HOME/venv/$cur_basename/bin/activate.fish 2> /dev/null

set PATH $PATH $HOME/scripts /usr/lib/postgresql/11/bin/
set PATH $PATH $HOME/.local/bin

set EDS $HOME/venv/hat-eds/bin/activate.fish
set CORE $HOME/venv/hat-core/bin/activate.fish
set MMES $HOME/venv/mmes/bin/activate.fish
