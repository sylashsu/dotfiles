
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# 主題設置
# 列表在 ~/.oh-my-zsh/themes/
  #ZSH_THEME="ys"
  ZSH_THEME="powerlevel10k/powerlevel10k"

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
 zsh-completions
 zsh-autosuggestions
 terraform
 kubectl
)
# plugins list
#	history

source $ZSH/oh-my-zsh.sh
#source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# User configuration
#GO_PATH="/usr/local/go/bin"
#export GOROOT=/usr/local/go
#export GOBIN=$GOROOT/bin
export GOPATH=$HOME/go
export GOROOT="$(brew --prefix golang)/libexec"
#export GOROOT="/opt/homebrew/bin"
export GOBIN=$GOPATH/bin
#export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"
export PATH=$PATH:$GOBIN:$GOROOT/bin

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

##
alias gw='cd ~/WorkSpace/go'
alias pw='cd ~/WorkSpace/python'
alias jw='cd ~/WorkSpace/java'
alias dw='cd ~/WorkSpace/docker'

# bindkey
bindkey "\e\e" sudo-command-line

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
source $ZSH_CUSTOM/themes/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# direnv
eval "$(direnv hook zsh)"
. ~/.txone

## zsh-completions
fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src


autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /opt/homebrew/bin/terraform terraform
export PATH="/opt/homebrew/opt/curl/bin:$PATH"

## flux
command -v flux >/dev/null && . <(flux completion zsh)


PATH="/Users/sylas_hsu/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/Users/sylas_hsu/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/Users/sylas_hsu/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/Users/sylas_hsu/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/Users/sylas_hsu/perl5"; export PERL_MM_OPT;

# node version
export PATH="/opt/homebrew/opt/node@18/bin:$PATH"
#export PATH="/opt/homebrew/opt/node@16/bin:$PATH"

# homebrew
export HOMEBREW_NO_AUTO_UPDATE=1
export HOMEBREW_NO_INSTALL_CLEANUP=1

# krew
export PATH="${PATH}:${HOME}/.krew/bin"

##
autoload -U +X bashcompinit && bashcompinit
complete -C /opt/homebrew/bin/parquet-tools parquet-tools

export PATH="/opt/homebrew/opt/go@1.20/bin:$PATH"

##
alias docker_enter='docker run --entrypoint /bin/sh -it'
alias docker_cleanup='docker rm $(docker ps -f status=exited -aq)'
alias docker_img_clean='docker rmi $(docker images -f "dangling=true" -q)'
