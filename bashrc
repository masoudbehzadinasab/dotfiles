# STAMPEDE --------------------------------------------------------
export STAMPEDE="behzadi@stampede.tacc.utexas.edu:"

# Colors ----------------------------------------------------------
export TERM=xterm-256color
export GREP_OPTIONS='--color=auto' GREP_COLOR='1;32'
export CLICOLOR=1 

if [ "$OS" = "linux" ] ; then
    alias ls='ls --color=auto' # For linux, etc
    # ls colors, see: http://www.linux-sxs.org/housekeeping/lscolors.html
    export LS_COLORS='di=1:fi=0:ln=31:pi=5:so=5:bd=5:cd=5:or=31:mi=0:ex=35:*.rb=90'  #LS_COLORS is not supported by the default ls command in OS-X
else
    alias ls='ls -G'  # OS-X SPECIFIC - the -G command in OS-X is for colors, in Linux it's no groups
fi

# Setup some colors to use later in interactive shell or scripts
export COLOR_NC='\033[0m' # No Color
export COLOR_WHITE='\033[1;37m'
export COLOR_BLACK='\033[0;30m'
export COLOR_BLUE='\033[0;34m'
export COLOR_LIGHT_BLUE='\033[1;34m'
export COLOR_GREEN='\033[0;32m'
export COLOR_LIGHT_GREEN='\033[1;32m'
export COLOR_CYAN='\033[0;36m'
export COLOR_LIGHT_CYAN='\033[1;36m'
export COLOR_RED='\033[0;31m'
export COLOR_LIGHT_RED='\033[1;31m'
export COLOR_PURPLE='\033[0;35m'
export COLOR_LIGHT_PURPLE='\033[1;35m'
export COLOR_BROWN='\033[0;33m'
export COLOR_YELLOW='\033[1;33m'
export COLOR_GRAY='\033[1;30m'
export COLOR_LIGHT_GRAY='\033[0;37m'
alias colorslist="set | egrep 'COLOR_\w*'"  # lists all the colors
        
# History ----------------------------------------------------------
export HISTCONTROL=ignoredups
#export HISTCONTROL=erasedups
export HISTFILESIZE=3000
export HISTIGNORE="ls:cd:[bf]g:exit:..:...:ll:lla"
alias h=history
alias hack="h | ack -i"
hf(){ 
  grep "$@" ~/.bash_history
}

# Navigation -------------------------------------------------------
alias ..='cd ..'
alias ...='cd .. ; cd ..'
#alias sshst='ssh -X behzadi@stampede.tacc.utexas.edu'  
alias sshst='ssh behzadi@stampede.tacc.utexas.edu'  
alias sshls='ssh -X behzadi@ls5.tacc.utexas.edu'  
alias deactivate='source deactivate'
alias post-processing='source activate exodus-post-processing'
alias desktop='cd ~/Desktop/'

# Programs ---------------------------------------------------------
alias peridigm='/usr/local/Peridigm/bin/Peridigm'
export PERIDIGM='/usr/local/Peridigm/bin/Peridigm'
alias paraview='/opt/homebrew-cask/Caskroom/paraview/4.3.1/paraview.app/Contents/MacOS/paraview'
alias cubit='/Applications/Cubit-13.0/Cubit.app/Contents/MacOS/cubit -batch -nographics -nojournal'

# Other aliases ----------------------------------------------------
alias vi='vim'
alias la='ls -a'
alias reloadbash='source ~/.bash_profile'
alias mkpdf="latexmk -pvc -pdf"
alias mkxlx="latexmk -xelatex -pvc -pdf"
