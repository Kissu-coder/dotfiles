export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="nicoulaj"
source $ZSH/oh-my-zsh.sh

export LANG=en_US.UTF-8
export XDG_CONFIG_HOME="$HOME/.config"
export PATH=$HOME/.local/bin:/usr/local/bin:$PATH
export EDITOR='nvim'

# fileutils
alias -g ls="lsd"
alias s="ls --color=auto -lh --sort=time"
alias sl="ls -lh"
alias cp="cp -rv"
alias mv="mv -v"
alias rm="rm -rvi"
alias mkdir="mkdir -pv"

# git
alias gc="git commit -m"
alias ga="git add"
alias gp="git push"
alias gpl="git pull"
alias gf="git fetch"
alias gs="git status"

# yt-dlp
yt_common="yt-dlp --ignore-errors --download-archive .downloaded.txt"
down_format="-f '399[ext=mp4]+bestaudio/398+bestaudio/137+bestaudio/bestvideo+bestaudio'"
subs="--write-sub --write-auto-sub --compat-options no-keep-subs --sub-lang en --sub-format best --embed-subs"
playlist="-o '%(playlist)s/%(playlist_index)s - %(title)s_%(id)s.%(ext)s'"
alias ytb="$yt_common $subs $down_format --merge-output-format mkv --embed-thumbnail"
alias ytp="$aliases[ytb] $playlist"
alias yta="$yt_common -f 'bestaudio'"
alias ytap="$aliases[yta] $playlist"

# mpv
alias qmpv="mpv --autofit=40% --ontop=yes --volume=50 --geometry=100%:0%"
alias bmpv="mpv --volume=50 --no-video --loop-playlist"

# >.>
alias gpp="g++ -pedantic-errors -Wall -Weffc++ -Wextra -Wsign-conversion -Werror -std=c++2a -nostartfiles"

# extras
alias dl="gallery-dl -i .requirements_gl.txt --download-archive .archive.sql"
alias top="bpytop"
alias a="pip3 install -U virtualenv pip yt-dlp bpytop;
	      rustup update;
	      sudo pacman -Syu"

. "$HOME/.cargo/env"
