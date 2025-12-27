#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias e='nvim'
alias py='python3'
alias ls='ls --color=auto'
alias ll='ls -l'
alias grep='grep --color=auto'

PS1='[\u@\h \W]\$ '
HISTSIZE=-1
HISTFILESIZE=-1

# export PATH="/usr/local/texlive/2023/bin/x86_64-linux:$PATH:$HOME/.local/bin:$HOME/.cargo/bin"
# export INFOPATH="/usr/local/texlive/2023/texmf-dist/doc/info:$INFOPATH"
# export MANPATH="/usr/local/texlive/2023/texmf-dist/doc/man:$MANPATH"

source /usr/share/fzf/key-bindings.bash

function a() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}
