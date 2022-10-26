function fish_mode_prompt; end

function fish_prompt
    if test "$fish_key_bindings" = "fish_vi_key_bindings"
        switch $fish_bind_mode
            case default
                set_color bd93f9 purple
            case insert
                set_color 50fa7b green
            case replace-one
                set_color ffb86c magenta
            case visual
                set_color f1fa8c yellow
            end
        echo (prompt_pwd) "> "
    end
end

# output git_branch
function git_branch
    git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ [\1]/'
end

# right side prompt
function fish_right_prompt
    set_color ff79c6 brred
    echo (git_branch)
end