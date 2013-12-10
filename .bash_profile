
# Prepended Paths
PATH=:/usr/local/bin:/usr/local/Cellar/macvim/7.3.923/bin:$PATH # Needs to be before /usr/bin. For vim binaries.

# Appended Paths
PATH=$PATH\:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/sbin
PATH=$PATH\:$HOME/opt/mongodb-osx-x86_64-2.2.0/bin
PATH=$PATH\:$HOME/opt/android-sdk-macosx/platform-tools
PATH=$PATH\:$HOME/opt/android-sdk-macosx/tools
PATH=$PATH\:$HOME/bin
PATH=$PATH\:$HOME/Library/Trigger\ Toolkit

# XXX Not sure what this is used for
CLICOLOR=1

export ARCHFLAGS='-arch x86_64'

# Terminal prompt settings
export PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;36m\]\w\[\033[00m\]\$ '

# Set gnu ls. In order to do this you need gnu file tools installed and added to path.
alias ls='gls --color=auto'
alias ll='gls --color=auto -al'

eval `gdircolors $HOME/.dir_colors`

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Customized items.
alias dwibbles='ssh dwibbles.com'
alias unified='ssh api.dwibbles.com'

test -f ~/.bashrc && source ~/.bashrc
