# Identify OS and Machine -----------------------------------------
export OS=`uname -s | sed -e 's/  */-/g;y/ABCDEFGHIJKLMNOPQRSTUVWXYZ/abcdefghijklmnopqrstuvwxyz/'`
export OSVERSION=`uname -r`; OSVERSION=`expr "$OSVERSION" : '[^0-9]*\([0-9]*\.[0-9]*\)'`
export MACHINE=`uname -m | sed -e 's/  */-/g;y/ABCDEFGHIJKLMNOPQRSTUVWXYZ/abcdefghijklmnopqrstuvwxyz/'`
export PLATFORM="$MACHINE-$OS-$OSVERSION"
export HOMEBREW_GITHUB_API_TOKEN= 
export DYLD_LIBRARY_PATH=/usr/local/trilinos/lib:$DYLD_LIBRARY_PATH
#export DYLD_INSERT_LIBRARIES='/System/Library/Frameworks/OpenGL.framework/Resources/GLEngine.bundle/GLEngine'
export LIBRARY_PATH="$LIBRARY_PATH:/usr/local/lib"
#export DYLD_FORCE_FLAT_NAMESPACE=1
# Note, default OS is assumed to be OSX

export EDITOR=vim

export PATH=/usr/local/trilinos/bin:$PATH

#To add pvpython to PATH
export PATH=/usr/local/opt/paraview/paraview.app/Contents/bin:$PATH

# Load in .bashrc -------------------------------------------------
source ~/.bashrc

# MacVim for YouCompleteMe
export PATH=/Applications/MacVim.app/Contents/MacOS:$PATH

source /usr/local/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh
#source /Users/masoud/anaconda/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh

#VNC Stampede
alias VNC='ssh -f -N -L $xxxx:stampede.tacc.utexas.edu:$xxxx behzadi@stampede.tacc.utexas.edu'


# added by Anaconda2 2.5.0 installer
# export PATH="$PATH:/Users/masoud/anaconda/bin"
