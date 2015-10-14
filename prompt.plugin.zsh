#
# Loads prompt themes.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

local fdir=$0:A:h/functions
fpath+=$fdir
autoload -Uz $fdir/*(:t)

# Load and execute the prompt theming system.
autoload -Uz promptinit && promptinit

zstyle -a ':prezto:module:prompt' theme 'prompt_argv'
if [[ "$TERM" == (dumb|linux|*bsd*) ]] || (( $#prompt_argv < 1 )); then
  prompt 'off'
else
  prompt "$prompt_argv[@]"
fi
unset prompt_argv
