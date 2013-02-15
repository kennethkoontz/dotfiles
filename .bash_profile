
# TODO Make these conditional. If the directories don't exist don't add to path, if they do, add them.
PATH=$PATH\:$HOME/opt/mongodb-osx-x86_64-2.2.0/bin
PATH=$PATH\:$HOME/opt/android-sdk-macosx/platform-tools
PATH=$PATH\:$HOME/opt/android-sdk-macosx/tools
PATH=$PATH\:$HOME/bin

# XXX Not sure what this is used for
CLICOLOR=1

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
