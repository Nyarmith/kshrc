#!/usr/bin/env bash

dotdir="$(dirname ${BASH_SOURCE[0]})"

# must be first
if [ -n "$TMUX_ALWAYS_ON" ] && hash tmux  && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
    exec tmux -f "${dotdir}/config/tmux/tmux.conf"
    exit 0
fi

# enter dotfiles
pushd "$dotdir" > /dev/null 2>&1

if [ -n "$DOTDEBUG" ]; then
    printlog(){ echo "dotdebug: " $@; };
else
    printlog(){ :; };
fi

import_dir(){
    [ -z "$1" ] && printf "usage: import_dir <script_dir>\n"
    for file in ./${1}/*.sh; do
        source "$file"
    done
}

printlog "Begin - importing directories"

#--- import modules ----
import_dir lib
import_dir ps_config
import_dir aliases
import_dir tool_ext
import_dir os_specific
import_dir host_specific 2> /dev/null
import_dir misc

printlog "End - importing directories"


unset printlog
unset dotdir
popd > /dev/null # exit dotfiles
