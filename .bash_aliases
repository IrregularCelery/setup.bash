alias sudo='sudo '

alias cd..='cd ..'
alias ..='cd ..'
alias ....='cd ../..'

alias vim='nvim $@'
alias v='nvim $@'
alias hiddify='cd /usr/local/hiddify; sudo ./AppRun'

# Check if ripgrep is installed
if command -v rg &> /dev/null; then
    # Alias grep to rg if ripgrep is installed
    alias grep='rg'
else
    # Alias grep to /usr/bin/grep with GREP_OPTIONS if ripgrep is not installed
    alias grep="/usr/bin/grep"
fi

alias la='ls -Alh'                # show hidden files
alias ls='ls -Fh --color=auto'	  # add colors and file type extensions
alias lc='ls -ltcrh'              # sort by change time
alias lt='ls -ltrh'               # sort by date
alias lf="ls -l | egrep -v '^d'"  # files only
alias ld="ls -l | egrep '^d'"     # directories only
alias ll='ls -Fls'                # long listing format

alias cls='clear'

alias mx='chmod a+x'

# Search command line history
alias h="history | grep "

# Search running processes
alias p="ps aux | grep "

# Search files in the current folder
alias f="find . | grep "

# Show open ports
alias openports='netstat -nape --inet'

# Show all logs in /var/log
alias logs="sudo find /var/log -type f -exec file {} \; | grep 'text' | cut -d' ' -f1 | sed -e's/:$//g' | grep -v '[0-9]$' | xargs tail -f"

# A simple alias for Suckless stuff (e.g. DWM) for building and removing object files
alias smci="sudo make clean install && rm *.o && rm *.orig"

# IP address lookup
alias whatismyip="whatsmyip"
function whatsmyip ()
{
	echo -n "Internal IP: "
	/sbin/ip addr show wlp1s0 | grep "inet " | awk -F: '{print $1}' | awk '{print $2}'

	# External IP Lookup
	echo -n "External IP: "
	curl -s api.ipify.org
}
