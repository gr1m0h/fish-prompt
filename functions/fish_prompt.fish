function fish_mode_prompt; end

# vi mode
fish_vi_key_bindings

# prompt
function fish_prompt
    if test "$fish_key_bindings" = "fish_vi_key_bindings"
        switch $fish_bind_mode
            case default
                set_color bd93f9
            case insert
                set_color 50fa7b
            case replace-one
                set_color ff5555
            case visual
                set_color ff79c6
            end
        echo (prompt_pwd)(__fish_git_prompt) "> "
    end
end

# right side prompt
function fish_right_prompt
    set_color f1fa8c
    echo $CMD_DURATION
end
