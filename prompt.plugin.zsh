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

# Load the prompt theme.
prompt nicoulaj
