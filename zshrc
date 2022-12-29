#cat < powerq.txt | toilet -f wideterm.tlf | lolcat -ai -d 1

# bindkey -M viins 'jj' vi-cmd-mode
ZVM_VI_INSERT_ESCAPE_BINDKEY=jj

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="$PATH:/home/woland/.vim/plugged/vim-superman/bin"

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="bira"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

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
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(zsh-vi-mode git archlinux zsh-syntax-highlighting zsh-autosuggestions web-search)

source $ZSH/oh-my-zsh.sh
# User configuration
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
        source /etc/profile.d/vte.sh
fi


#PACMAN ALIASES
alias ins='sudo pacman -S'
alias update='sudo pacman -Sy'
alias upgrade='sudo pacman -Syu'
alias ss='sudo pacman -Ss'
alias remove='sudo pacman -Rs'
alias pkl='sudo pacman -Qq'
alias upkl='sudo pacman -Qeq'
alias cleanup='sudo pacman -Sc'
alias fuck='sudo pacman -Rnscd'
#YAY ALIASES
alias upaur='yay -Sua' #Updates AUR Packages 
alias lsupaur='yay -Pu' #Lists Upgradable AUR Packages
alias yayclean='yay -Yc' #Removes Unneeded Dependencies
alias yayrm='yay -Rns' #Removes Program And Dependency
alias yaycach='yay -c' #Removes Yay Cache in Yaybin
alias yuck='yay -Rnscd'

#OTHER ALIASES THAT ARE USEFULL
alias l='lsd'
#alias ls='ls --color=auto'
alias brc='vim .bashrc'
alias zrc='vim .zshrc'
alias yt='youtube-dl -ic'
alias btop='bashtop'
alias hp='htop'
alias nf='neofetch'
alias nfl='neofetch | lolcat'
alias nfc='neofetch | lolcat'
alias ..='cd ..'
alias reload='source ~/.bashrc'
alias merge='xrdb -merge ~/.Xresources'
alias disk='ncdu'
alias yabridge='/home/woland/.local/share/yabridge/yabridgectl'
alias pk='pulseaudio -k'
alias r='ranger'
alias v='vim'
alias whaterm='ps -p $(ps -p $$ -o ppid=) o args='
alias vf='vifm' 
alias X='exit' 

alias sk='screenkey -s small -p bottom -t 1 --vis-shift  -f SourceCodePro --bg-color grey --geometry 1920x1170'
alias sk2='screenkey -s small -p top -f hack --bg-color powderblue --vis-shift'
alias skb='screenkey -s small -p bottom -f hack --bg-color powderblue --vis-shift'
alias sc='screenkey -s small -p bottom -t 1 --vis-shift  -f SourceCodePro --bg-color grey --geometry 1920x1170'

alias xep='Xephyr -br -ac -noreset -screen 800x600 :1'
alias xev="xev | awk -F'[ )]+' '/^KeyPress/ { a[NR+2] } NR in a { printf "%-3s %s\n", $5, $8 }'"
alias wm='DISPLAY=:1'
alias find='sudo find / -name'
alias gc='git clone'
alias ff='fastfetch'

alias www='w3m duckduckgo.com'
alias arch='w3m archlinux.org/packages'
alias rss='newsboat'
alias reddit='tuir'
alias feh2='feh --bg-fill ~/Pictures/Artix/Artix-dark.png --bg-fill ~/Pictures/Vertical/galaxy2.jpg'
alias 3lock='i3lock -c 000000'

alias pass='echo 12541254 |'
alias sdf='sudo -S poweroff'
alias res='sudo -S reboot'

alias tb="nc termbin.com 9999"

alias screenrecord='read -r o g < <(slop -f '+%x,%y %wx%h'); ffmpeg -f x11grab -framerate 60 -video_size 1888x1006 -i +1096,392 output.mp4'

alias mkweb='~/./mkweb.sh'
function mkdircd () { mkdir -p "$@" && eval cd "\"\$$#\""; }

export TUIR_BROWSER=w3m
