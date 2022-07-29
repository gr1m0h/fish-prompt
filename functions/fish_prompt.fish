function fish_prompt
    if test "$fish_key_bindings" = "fish_vi_key_bindings"
        switch $fish_bind_mode
            case default
                set_color cyan white
            case insert
                set_color green white
            case replace-one
                set_color green white
            case visual
                set_color yellow white
            end
        echo (prompt_pwd) "> "
    end
end
