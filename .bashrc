if [ -n "$BASH_VERSION" ]; then
    export PS1='\u@\h:\w\$ '
else
    if [ "$UID" -eq 0 ]; then
        export PROMPT='%f%n@%m:%~%# '
    else
        export PROMPT='%f%n@%m:%~\$ '
    fi
fi

if [ -n "$BASH_VERSION" ]; then
    export PS1='\[\e[38;5;135m\]\u\[\e[0m\]@\[\e[38;5;166m\]\h\[\e[0m\] \[\e[38;5;118m\]\w\[\e[0m\] \$ '
else
    if [ "$UID" -eq 0 ]; then
        export PROMPT="%F{135}%n%f@%F{166}%m%f %F{118}%~%f %# "
        export PS1='\[\e[01;31m\]\u@\h\[\e[00m\]:\[\e[01;34m\]\w\[\e[00m\]\$ '
    else
        export PROMPT="%F{135}%n%f@%F{166}%m%f %F{118}%~%f \$ "
    fi
fi
