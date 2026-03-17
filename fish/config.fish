set cur_basename (basename $PWD)

# Platform-specific paths
switch (uname -s)
    case Darwin
        fish_add_path -g /opt/homebrew/bin
        set -gx PYENV_ROOT $HOME/.pyenv
    case Linux
        set -gx PYENV_ROOT $HOME/.pyenv
end

# Common paths
set -gx GOPATH $HOME/go
fish_add_path -g $GOPATH/bin $HOME/scripts

set -gx KUBE_EDITOR nvim

# PERFORMANCE: Lazy-load rbenv instead of initializing on every shell
# Adds shim directory to PATH but defers full initialization
if command -v rbenv >/dev/null 2>&1
    set -gx PATH $HOME/.rbenv/shims $PATH

    # Initialize rbenv only when first used
    function rbenv
        set -e RBENV_SHELL
        command rbenv rehash 2>/dev/null
        set -gx RBENV_SHELL fish
        source (command rbenv init - | psub)

        # Replace this function with real rbenv
        functions -e rbenv

        # Call the real rbenv with original arguments
        command rbenv $argv
    end
end

# PERFORMANCE: Lazy-load pyenv instead of initializing on every shell
# Adds shim directory to PATH but defers full initialization
if command -v pyenv >/dev/null 2>&1
    fish_add_path -g $PYENV_ROOT/bin $PYENV_ROOT/shims

    # Initialize pyenv only when first used
    function pyenv
        source (command pyenv init - | psub)

        # Replace this function with real pyenv
        functions -e pyenv

        # Call the real pyenv with original arguments
        command pyenv $argv
    end
end

# direnv integration
# PERFORMANCE: Cached direnv - checks .envrc mtime and caches for 2 seconds
if command -v direnv >/dev/null 2>&1
    # CRITICAL: Erase default uncached direnv hooks that run on every prompt/command
    functions --erase __direnv_export_eval __direnv_export_eval_2 2>/dev/null

    # Uses __direnv_export_eval_cached from fish/functions/
    # Auto-loads via --on-variable PWD

    # Run once on shell startup
    __direnv_export_eval_cached
end

# PERFORMANCE: Auto-disable git prompt in monorepo (currently disabled for testing)
# function __check_slow_dir --on-variable PWD
#     if string match -q '*/code/monorepo*' $PWD
#         set -gx FISH_PROMPT_NO_GIT 1
#     else
#         set -e FISH_PROMPT_NO_GIT
#     end
# end
# __check_slow_dir

# Source optional config files
test -f $HOME/.system.fish; and source $HOME/.system.fish
test -f $HOME/.aliases.sh; and source $HOME/.aliases.sh
test -f $HOME/.config/fish/kubectl_aliases.fish; and source $HOME/.config/fish/kubectl_aliases.fish

abbr cdf "cd (find * -type d | fzf)"
