#!/usr/bin/env bash

# XTerm transoarency
[ -n "$XTERM_VERSION" ] && transset-df -m 0.8 --id "$WINDOWID" >/dev/null
# tty resolution
fbset -a -g 1920 1080 1920 1080 32

[[ $- != *i* ]] && return
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
source ~/Scripts/bashnippets

# export XDG_CURRENT_DESKTOP=i3-gaps
export PATH="$PATH":~/.local/bin
export QT_QPA_PLATFORMTHEME=qt5ct
export HISTCONTROL=ignoredups
export EDITOR=vim
export TUIR_BROWSER=w3m
export PATH="$PATH:/home/woland/.vim/plugged/vim-superman/bin"
export TERM=xterm-256color
unset QT_STYLE_OVERRIDE
complete -cf sudo
. "$HOME/.cargo/env"

if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

#################
# ____  ____  _ #
#|  _ \/ ___|/ |#
#| |_) \___ \| |#
#|  __/ ___) | |#
#|_|   |____/|_|#
#################
#PS1='\[\e[0;38;5;222m\]┬─[\[\e[0;38;5;33m\]\A\[\e[0;38;5;34m\]\w\n\[\e[0;38;5;222m\]╰─>\[\e[0m\]'
#PS1='\[\e[0;38;5;222m\]┬─[\[\e[0;38;5;34m\]\w\n\[\e[0;38;5;222m\]╰─>\[\e[0m\]'
#PS1='\e[33m\]\u@\h\W\[\e[m\]\[\e[32m\]\\$\e[m\]'
#PS1="\[\e[33m\]\w\[\e[m\]\[\e[33m\]>\[\e[m\] "
#PS1="\[\e[35m\]woland\[\e[m\]\[\e[32m\]@\[\e[m\]\[\e[36m\]arch\[\e[m\]\[\e[31m\]linux\[\e[m\]\[\e[32m\]~\[\e[m\]\[\e[36m\]\\$\[\e[m\] "
#PS1='\[\e[0;38;5;226m\]┬─[\[\e[0m\]\[\e[0;38;5;118m\]\w\n\[\e[0;38;5;226m\]╰─>\[\e[0m\]'
#PS1='\[\e[0;38;5;222m\]┬─[\[\e[0;38;5;118m\]\w\n\[\e[0;38;5;222m\]╰─>\[\e[0m\]'
PS1='\[\e[0;38;5;39m\]\w \n\[\e[0;38;5;46m\]>\[\e[0;38;5;46m\]> \[\e[0m\]'

# VIM Mode Color With Ble.sh
# PS1='\[\e[0;38;5;226m\]┬─[\[\e[0m\]\[\e[0;38;5;118m\]\w\n\[\e[0;38;5;226m\]╰─>\[\e[1;34]\q{my/vim-mode}\]'

########################
#       _ _            #
#  __ _| (_) __ _ ___  #
# / _` | | |/ _` / __| #
#| (_| | | | (_| \__ \ #
# \__,_|_|_|\__,_|___/ #
########################
# ┌──────────────┐
# │PACMAN ALIASES│
# └──────────────┘
alias ins='doas pacman -S'
alias update='doas pacman -Sy'
alias upgrade='doas pacman -Syu'
alias Ss='doas pacman -Ss'
alias remove='doas pacman -Rns'
alias fuck='doas pacman -Rnscd'
alias pkl='doas pacman -Qq'
alias upkl='doas pacman -Qeq'
alias cleanup='doas pacman -Sc'
alias fullcleanup='doas pacman -Scc'
alias autoremove='doas pacman -Rsn $(pacman -Qdtq)'
alias killtheorphans='doas pacman -Qdtq > orphans'
# ┌───┐
# │YAY│
# └───┘
alias upaur='yay -Sua' #Updates AUR Packages 
alias lsupaur='yay -Pu' #Lists Upgradable AUR Packages
alias yayclean='yay -Yc' #Removes Unneeded Dependencies
alias yayrm='yay -Rns' #Removes Program And Dependency
alias yaycach='yay -c' #Removes Yay Cache in Yaybin
# ┌─────────────┐
# │OTHER ALIASES│
# └─────────────┘
alias l='exa'
alias ll='exa -l'
alias la='exa -la'
alias linksg='links -g www.duckduckgo.com'
alias brc='vim ~/.bashrc'
alias yt='youtube-dl -ic'
alias hp='htop'
alias nf='neofetch'
alias nfl='neofetch | lolcat'
alias ..='cd ..'
alias reload='source ~/.bashrc'
alias merge='xrdb -merge ~/.Xresources'
alias disk='ncdu'
alias yabridge='/home/woland/.local/share/yabridge/yabridgectl'
alias pk='pulseaudio -k'
alias r='ranger'
alias v='vim'
alias whaterm='ps -p $(ps -p $$ -o ppid=) o args='
alias f='vifm .' 
alias X='exit' 
alias sk='screenkey -s small -p bottom -t 1 --vis-shift  -f SourceCodePro --bg-color grey --geometry 1920x1170'
alias sk2='screenkey -s small -p top -f hack --bg-color powderblue --vis-shift'
alias skb='screenkey -s small -p bottom -f hack --bg-color powderblue --vis-shift'
alias sc='screenkey -s small -p bottom -t 1 --vis-shift  -f SourceCodePro --bg-color grey --geometry 1920x1170'
alias xep='Xephyr -br -ac -noreset -screen 800x600 :1'
alias wm='DISPLAY=:1'
alias dtc='cd ~/.config'
alias gc='git clone'
alias fa='fastfetch --load-config ~/Downloads/Programs/fastfetch/presets/all'
alias ff='flashfetch'
alias www='w3m duckduckgo.com'
alias arch='w3m archlinux.org/packages'
alias rss='newsboat'
alias reddit='tuir'
alias feh2='feh --bg-fill ~/Pictures/Artix/Artix-dark.png --bg-fill ~/Pictures/Vertical/galaxy2.jpg'
alias i3lock='i3lock -c 000000'
alias xclock='xclock -bg gray -geometry 328x328'
alias hkn='hackernews_tui -c ~/.config/hackernews/hn-tui.toml'
alias pass='echo 12541254 |'
alias mkweb='~/./mkweb.sh'
alias cachesize='du -sh /var/cache/pacman/pkg/'
alias binit="curl -F 'file=@-' 0x0.st"
alias tilde='ssh -p 443 woland@ssh.tilde.team'
alias colours='for x in {0..8}; do for i in {30..37}; do for a in {40..47}; do echo -ne "\e[$x;$i;$a""m\\\e[$x;$i;$a""m\e[0;37;40m "; done; echo; done; done; echo ""'
alias vc='vim --clean'
alias psg='python ~/.local/bin/passgen.py'
alias ww='vim -c VimwikiIndex'
alias finder='xfce4-appfinder'
alias page='/usr/share/vim/vim90/macros/less.sh'
alias gtop='gotop --layout=minimal'
alias pm='pulsemixer'

alias c1='echo "924482" | doas openconnect c1.kmak.us:443 --user=km16236236 --passwd-on-stdin'
alias c2='echo "924482" | doas openconnect c2.kmak.us:443 --user=km16236236 --passwd-on-stdin'
alias c3='echo "924482" | doas openconnect c3.kmak.us:443 --user=km16236236 --passwd-on-stdin'

alias rip="expac --timefmt='%Y-%m-%d %T' '%l\t%n %v' | sort | tail -200 | nl"
alias riplong="expac --timefmt='%Y-%m-%d %T' '%l\t%n %v' | sort | tail -3000 | nl"
alias player='ncmpcpp'

# ┌─────────┐
# │Functions│
# └─────────┘
function mkdircd () { mkdir -p "$@" && eval cd "\"\$$#\""; }
function cs()
{
  cd $* && ls
}

# ┌──────────────────────────┐
# │EXtractor for all archives│
# └──────────────────────────┘
ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1   ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *.deb)       ar x $1      ;;
      *.tar.xz)    tar xf $1    ;;
      *.tar.zst)   tar xf $1    ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

# NOT USED
# shuf -n 1 ~/powerq.txt
# source ~/ble.sh/out/ble.sh
# source ~/.local/share/icons-in-terminal/icons_bash.sh
#RANGER_DEVICONS_SEPARATOR " "
#alias ls='ls --color=auto'
#alias vim='vim --clean'
#alias link='links www.duckduckgo.com'
#alias find='sudo find / -name'

#Vi-Mode
# if [[ $- == *i* ]]; then # in interactive session
# 	set -o vi
# fi

# alias c1='echo "009016" | doas openconnect c1.kmak.us:443 --user=km2247926 --passwd-on-stdin'
# alias c2='echo "009016" | doas openconnect c2.kmak.us:443 --user=km2247926 --passwd-on-stdin'
# alias c3='echo "009016" | doas openconnect c3.kmak.us:443 --user=km2247926 --passwd-on-stdin'
