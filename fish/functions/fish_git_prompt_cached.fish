function fish_git_prompt_cached --description 'Cached version of fish git prompt'
    # Global cache variables
    # __git_prompt_cache_pwd - cached directory
    # __git_prompt_cache_value - cached prompt string
    # __git_prompt_cache_mtime - cached .git/index mtime
    # __git_prompt_cache_time - timestamp of cache

    # Find git directory
    set -l git_dir (command git rev-parse --git-dir 2>/dev/null)
    or return  # Not in a git repo

    # Current directory
    set -l current_pwd $PWD

    # Check if cache is valid
    set -l cache_valid 0
    set -l current_time (date +%s)

    if test "$__git_prompt_cache_pwd" = "$current_pwd"
        # Same directory - check if git index changed
        set -l git_index "$git_dir/index"

        if test -f "$git_index"
            set -l current_mtime (stat -f %m "$git_index" 2>/dev/null)
            or set current_mtime (stat -c %Y "$git_index" 2>/dev/null)  # Linux fallback

            if test "$current_mtime" = "$__git_prompt_cache_mtime"
                # Index unchanged - check TTL (5 seconds)
                if test (math "$current_time - $__git_prompt_cache_time") -lt 5
                    set cache_valid 1
                end
            end
        else
            # No index file yet (new repo) - use time-based cache
            if test (math "$current_time - $__git_prompt_cache_time") -lt 5
                set cache_valid 1
            end
        end
    end

    # Return cached value if valid
    if test $cache_valid -eq 1
        echo -n "$__git_prompt_cache_value"
        return
    end

    # Cache invalid - compute new prompt
    set -l git_prompt (__fish_git_prompt_original)

    # Update cache
    set -g __git_prompt_cache_pwd "$current_pwd"
    set -g __git_prompt_cache_value "$git_prompt"
    set -g __git_prompt_cache_time "$current_time"

    # Cache mtime
    set -l git_index "$git_dir/index"
    if test -f "$git_index"
        set -g __git_prompt_cache_mtime (stat -f %m "$git_index" 2>/dev/null)
        or set -g __git_prompt_cache_mtime (stat -c %Y "$git_index" 2>/dev/null)
    else
        set -g __git_prompt_cache_mtime 0
    end

    echo -n "$git_prompt"
end

# Helper function to rename original git prompt
function __fish_git_prompt_original --description 'Original fish git prompt'
    # This calls the built-in fish_vcs_prompt
    fish_vcs_prompt
end
