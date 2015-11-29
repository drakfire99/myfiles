# Path to your oh-my-zsh installation.
export ZSH=/home/drakfire/.oh-my-zsh
#/home/drakfire/powerline.zsh
# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="gentoo"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="dd/mm/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(archlinux themes zsh-completions color-command sudo)

# User configuration

export PATH="/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
#export LANG=fr_FR.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
#export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

unpack () {
  if [ -f "$1" ] ; then
      case "$1" in
          *.tar.bz2) tar xvjf "$1" ;;
          *.tar.gz) tar xvzf "$1" ;;
          *.bz2) bunzip2 "$1" ;;
          *.rar) unrar e "$1" ;;
          *.gz) gunzip "$1" ;;
          *.tar) tar xvf "$1" ;;
          *.tbz2) tar xvjf "$1" ;;
          *.tgz) tar xvzf "$1" ;;
          *.zip) unzip "$1" ;;
          *.Z) uncompress "$1" ;;
          *.7z) 7z x "$1" ;;
          *) echo "don't know how to extract "$1"..." ;;
      esac
  else
      echo ""$1" is not a valid file!"
  fi
}
##alias
alias stop="systemctl poweroff"
alias restart="systemctl reboot"
alias grep="grep --color=auto"

##disque dur
alias df="dfc"
alias dfa="ncdu"
alias da="du -s * |sort -n"
alias di="du -sh ."
alias du="du -h"

##ls
alias ls="ls -l --color"
alias ll="ls -lha --color"

##vim
alias vimzsh="vim /home/drakfire/.zshrc"
alias vimrc="vim ~/.vimrc"

##stats
alias netstat="nbwmon"
alias info='figlet -c Archlinux & alsi'
alias color="sh /home/drakfire/Scripts/color3.sh"

##fichiers
alias rm="rm -Iv"
alias cp="pycp -g"
alias mv="pymv -g"

##tty
alias aqua="asciiquarium"
alias matrix="cmatrix -b -C blue"
alias cava="cava -i fifo -p /tmp/mpd.fifo"

##apps
alias clock="tty-clock -c -C 4"
alias youtube="mpsyt"
alias speedtest="speedtest"
alias redshift="redshift -l 50.6:1.4"
alias myip="w3m -dump http://checkip.dyndns.org:8245/"
alias today='date +"%A, %-d %B, %Y"'
##speedtest installation via aur= speedtest-cli

##archlinux
alias yaourtaur="yaourt -Qm"
alias nombredepackets="yaourt -Q | wc -l"
alias packetspartaille="package-query -Qf'%3 %n' | sort -rn"
alias update="arch_news && yaourt -Syua"
arch_news () {echo -e "\n\\e[01;31m> News Archlinux.fr\\e[00m\n$(curl -s https://archlinux.fr/feed | sed '/<title\|<pubDate/!d;s/\t*//g;s/<title>/ - /g;s/<\/title>//g;s/ [0-9]* [0-9]*:.*/\\e[00m/g;s/&#8217;/'"'"'/g;s/&#8211;//g;/Archlinux.fr/d;s/intervention manuelle/\\033[1;33mintervention manuelle\\e[00m/g;' | sed 'N;s/\n<pubDate>/ - \\033[1;34m/g;P;D;') \n"}
alias updatefont="fc-cache -v -f"

# git
alias gitpush="git push -f origin master"


##LANG	
export LANG=fr_FR.UTF-8
export LC_CTYPE=fr_FR.UTF-8

blue="$(tput setaf 4)"
default="$(tput sgr0)"
echo "$blue" 
cat /home/drakfire/issue 
