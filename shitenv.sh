if [ "$S__TENV_ROOT" != "" ] ; then
    function shitenv () {
        source $S__TENV_ROOT/env/$1
    }
    function _shitenv_comp () {
        local cur=${COMP_WORDS[COMP_CWORD]}
        COMPREPLY=( $(compgen -W "`ls $S__TENV_ROOT/env`" -- $cur) )
    }
    complete -F _shitenv_comp shitenv
else
    echo "missing \$S__TENV_ROOT"
fi
