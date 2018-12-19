# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH="/home/sylas/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# 主題設置
# 列表在 ~/.oh-my-zsh/themes/
  ZSH_THEME="ys"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# 大小寫敏感
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# 連接符不敏感， "_" 和 "-" 互換
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# 自動更新
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# 自動更新時間間隔
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# ls 命令帶顏色
 DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# 標題顯示
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# 啟動自動糾正命令
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# 自動補全時，沒有補全時顯示紅點
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# 歷史命令時間格式
HIST_STAMPS="yyyy-mm-dd"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# Plugin 設定
plugins=(
 git
 git-extras
 catimg
 colored-man-pages
 sudo
 command-not-found
 dirhistory
 zsh-syntax-highlighting
 extract
 docker
 encode64
 httpie
 jsontools
 mvn
 npm
 systemd
 urltools
 vi-mode
 web-search
)
# plugins list
#	history

source $ZSH/oh-my-zsh.sh

#source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# User configuration
#JAVAHOME="/usr/lib/jvm/java-1.11.0-openjdk-amd64/bin"
GraalVm="/home/sylas/GrralVm/graalvm-ce-1.0.0-rc8/bin"
#GraalVm=""
GOHOME="/usr/local/go/bin"
#export PATH="$GraalVm:$PATH"
#export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
export PATH="$GOHOME:$PATH"

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# default editor
export EDITOR='vim'

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="vi ~/.zshrc"
#alias ohmyzsh="mate ~/.oh-my-zsh"
alias ltra='ls -altrF'
alias ltr='ls -ltrF'
alias ll='ls -lF'
alias la='ls -A'
alias l='ls -CF'
alias grep="grep --color=auto" 
alias goexec='/home/sylas/go/bin/goexec'
alias gommand='/home/sylas/go/bin/gommand'
# bindkey
bindkey "\e\e" sudo-command-line
