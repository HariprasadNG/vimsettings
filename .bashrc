case $- in
	*i*)    #interactive
		export DSRCUSER=nghariprasad
	    	export PATH=${PATH}:/usr/local/bin:${HOME}/bin:/sbin
	        export MANPATH=/usr/local/man:/usr/share/man:/usr/man
		source ~/.dsrc
	;;
esac


echo ".bashrcfile is running..."
#### Custom Aliases
alias vi='vim'

alias startvnc='vncserver :1 -name vnc -depth 16 -geometry 1366x768'
###

function finder { 
    find . -name "$1" | xargs grep $2 $3 2>/dev/null; 
}

alias grep=grep --color=auto
alias fgrep=fgrep --color=auto
alias egrep=egrep --color=auto


####All git help####
function glog {
    git log --oneline --color $1 $2;
}

function gc {
    git checkout $1;
}

alias gb="git branch"
alias gammend="git commit --ammend"
alias gstatus="git status"

function grebase {
    git rebase -i $i;
}

function gfethc {
    git fetch $1;
}
