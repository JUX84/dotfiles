export PATH=$HOME/.yarn/bin:$HOME/bin:/usr/local/bin:$PATH

if [[ `cat /proc/version | grep "Microsoft"` ]];
then
    cd $HOME
else
    if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]];
    then
        exec startx
    fi
fi
