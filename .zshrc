# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh
export ZDOTDIR=$HOME

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
export ZSH_THEME="darrin"

# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# export DISABLE_AUTO_TITLE="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(brew ruby git rvm zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh
source $HOME/.bash_profile
source $HOME/.tmuxinator.zsh

alias tm='tmux attach -d -t'
alias tp='taskpaper'
alias la="ls -al"
alias disabledashboard="defaults write com.apple.dashboard mcx-disabled -boolean YES && killall Dock"
alias tmux="TERM=screen-256color-bce tmux"
alias pd="pwd | pbcopy"
alias clean="sudo rm -rf /private/var/log/asl/*.asl"
alias cc="coffee --watch --output . --compile ."
alias of="cd ~/Play/OpenFrameworks/of_0071_osx_release/"
alias lst="cd ~/Development/personal/lastronaut-ios"
alias serve="python -m SimpleHTTPServer"
alias py="ipython"
alias chromedev="open -a Google\ Chrome --args --disable-web-security"
alias pryr="pry -r ./config/environment"
alias s="subl ."
alias o="open ."
alias e="ember"
alias makecaf="afconvert -f caff -d LEI16@44100 -c 1"
alias bower='noglob bower'
alias sshmoz='ssh -L62223:localhost:62223 dhenein@people.mozilla.org'
alias sshdig='ssh -L62223:localhost:62223 henein-dig'
alias mozs='/Users/dhenein/Development/mozilla/Mozilla-Tools/weeklyStatus.py'
alias d="doing"
alias dr="doing recent"
alias ws="wintersmith"
alias simulator='open /Applications/Xcode.app/Contents/Developer/Applications/iOS\ Simulator.app'
alias xcnuke='rm -rf ~/Library/Developer/Xcodarrine/DerivedarrinData'

# init cfx
# exec $HOME/Development/mozilla/addons/addon-sdk/bin/cfx "$@"
alias cfxr="cfx run -b /Applications/FirefoxUX.app -p testing"

alias gs="git status"
alias gc="git commit -am"

unsetopt correct_all

# Customize to your needs...
export PATH="/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:/usr/local/share:/opt/local/bin:$PATH"


export PATH=/Applications/Racket/bin:$PATH

# export PATH=/usr/local/bin:/bin:/usr/sbin:/sbin:/usr/bin:/usr/local/git/bin:/usr/X11/bin:/usr/local/ImageMagick/bin$PATH

export NODE_PATH="/usr/local/lib/node_modules"

# rvm use 1.9.3
export ZSH_THEME="juanghurtado"

# add android SDK
export PATH="$PATH:/Users/dhenein/Documents/Android/adt-bundle-mac-x86_64-20130729/sdk/platform-tools:/usr/local/bin/moz-git-tools"

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

# z tool
. /usr/local/bin/z.sh

export EDITOR='vim'
export DISABLE_AUTO_TITLE=true

# imageMagick
export MAGICK_HOME="/usr/local/bin/ImageMagick-6.8.8"
export PATH="$MAGICK_HOME/bin:$PATH"
export DYLD_LIBRARY_PATH="$MAGICK_HOME/lib/"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
