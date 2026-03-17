function __direnv_export_eval_cached --on-variable PWD --description 'Cached direnv integration'
    # Cache key: PWD + .envrc mtime (if exists)
    set -l current_pwd $PWD
    set -l current_time (date +%s)

    # Check if cache is valid
    if test "$__direnv_cache_pwd" = "$current_pwd"
        # Same directory - check TTL (2 seconds for direnv)
        if test (math "$current_time - $__direnv_cache_time") -lt 2
            return  # Cache valid, skip direnv
        end
    end

    # Find .envrc in current or parent directories
    set -l envrc_mtime 0
    set -l search_dir $PWD
    while test "$search_dir" != "/"
        if test -f "$search_dir/.envrc"
            set envrc_mtime (stat -f %m "$search_dir/.envrc" 2>/dev/null)
            or set envrc_mtime (stat -c %Y "$search_dir/.envrc" 2>/dev/null)
            break
        end
        set search_dir (dirname "$search_dir")
    end

    # Check if .envrc changed
    if test "$__direnv_cache_pwd" = "$current_pwd"
        if test "$envrc_mtime" = "$__direnv_cache_envrc_mtime"
            # Same .envrc, cache valid for 2 seconds
            if test (math "$current_time - $__direnv_cache_time") -lt 2
                return
            end
        end
    end

    # Cache invalid - run direnv
    "/opt/homebrew/bin/direnv" export fish | source

    # Update cache
    set -g __direnv_cache_pwd "$current_pwd"
    set -g __direnv_cache_time "$current_time"
    set -g __direnv_cache_envrc_mtime "$envrc_mtime"
end
