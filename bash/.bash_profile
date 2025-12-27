#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

export WLR_NO_HARDWARE_CURSORS=1 
export EDITOR="nvim"
export VISUAL="nvim"

if [[ -z "$TMUX" ]]; then
  export PATH="/usr/local/texlive/2023/bin/x86_64-linux:$PATH:$HOME/.local/bin:$HOME/.cargo/bin"
  export INFOPATH="/usr/local/texlive/2023/texmf-dist/doc/info:$INFOPATH"
  export MANPATH="/usr/local/texlive/2023/texmf-dist/doc/man:$MANPATH"
fi

# nvim man pager
export MANPAGER="nvim +Man!"
export MANWIDTH=999
