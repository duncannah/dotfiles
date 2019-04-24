# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

setopt globdots

ZLE_RPROMPT_INDENT=0

SPACESHIP_CHAR_SUFFIX=' '
SPACESHIP_CHAR_SYMBOL='>'
SPACESHIP_NODE_DEFAULT_VERSION=$(node -v)

ZSH_THEME="spaceship"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
case `uname` in
  Darwin)
    # Home computer
    plugins=(
      git
      osx
      zsh-autosuggestions
      zsh-syntax-highlighting
    )
  ;;
  Linux)
    # Remote Linux server
    plugins=(
      git
      zsh-autosuggestions
      zsh-syntax-highlighting
    )
  ;;
esac

source $ZSH/oh-my-zsh.sh

# User configuration

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

#source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


case `uname` in
  Darwin)
    # Home computer

    export PATH="/usr/local/opt/qt/bin:$PATH"
    export PATH="/usr/local/opt/php@7.1/bin:$PATH"
    export PATH="/usr/local/opt/php@7.1/sbin:$PATH"

    export PATH="/usr/local/Cellar/mysql/5.7.22/bin/:$PATH"

    export PATH="/Applications/Wine Staging.app/Contents/Resources/wine/bin/:$PATH"
    export PATH="/usr/local/opt/qt/bin:$PATH"

    export ANDROID_HOME=$HOME/Library/Android/sdk
    export PATH=$PATH:$ANDROID_HOME/emulator
    export PATH=$PATH:$ANDROID_HOME/tools
    export PATH=$PATH:$ANDROID_HOME/tools/bin
    export PATH=$PATH:$ANDROID_HOME/platform-tools
  ;;
  Linux)
    # Remote Linux server

    export PATH="/home/duncan/.local/bin:$PATH"
  ;;
esac

alias code=code-insiders
