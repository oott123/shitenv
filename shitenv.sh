if [ "$SHITENV_ROOT" != "" ] ; then
    function shitenv () {
        source $SHITENV_ROOT/env/$1
    }
    function _shitenv_comp () {
        local cur=${COMP_WORDS[COMP_CWORD]}
        COMPREPLY=( $(compgen -W "`ls $SHITENV_ROOT/env`" -- $cur) )
    }
    complete -F _shitenv_comp shitenv
else
    echo "missing \$SHITENV_ROOT"
fi
