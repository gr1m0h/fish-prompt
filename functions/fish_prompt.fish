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
            case replace_one
                set_color ff5555
            case visual
                set_color ff79c6
            end
        echo (prompt_pwd)(__fish_git_prompt) "> "
    end
end

function cmd_duration
    set --local secs (math --scale=1 $CMD_DURATION/1000 % 60)
    set --local mins (math --scale=0 $CMD_DURATION/60000 % 60)
    set --local hours (math --scale=0 $CMD_DURATION/3600000)

    test $hours -gt 0 && set --local --append out $hours"h"
    test $mins -gt 0 && set --local --append out $mins"m"
    test $secs -gt 0 && set --local --append out $secs"s"

    set --query out && echo $out || echo $CMD_DURATION"ms"
end

# right side prompt
function fish_right_prompt
    set_color f1fa8c
    echo (cmd_duration)
end
