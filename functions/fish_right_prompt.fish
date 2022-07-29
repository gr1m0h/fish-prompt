# output fit_branch
function git_branch
    git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ [\1]/'
end

# right side prompt
function fish_right_prompt
    set_color ff79c6 brred
    echo (git_branch)
end
