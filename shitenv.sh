if [ "$S__TENV_ROOT" != "" ] ; then
    export S__TENV_ENV="${S__TENV_ENV:-$S__TENV_ROOT/env}"
    function shitenv () {
        source $S__TENV_ENV/$1
    }
    function _shitenv_comp () {
        local cur=${COMP_WORDS[COMP_CWORD]}
        COMPREPLY=( $(compgen -W "`ls $S__TENV_ENV/`" -- $cur) )
    }
    if [[ -n ${ZSH_VERSION-} ]]; then
        autoload -U +X bashcompinit && bashcompinit
    fi
    complete -F _shitenv_comp shitenv
else
    echo "[shitenv] missing \$S__TENV_ROOT"
fi

