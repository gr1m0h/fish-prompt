function git_branch
    git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ [\1]/'
end

function fish_right_prompt
    set_color purple white
    echo (git_branch)
end
