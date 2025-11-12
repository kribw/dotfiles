export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/lib/jvm/default/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"

plugins=(
	git
	fzf
	zsh-autosuggestions
  	zsh-syntax-highlighting
)

DISABLE_FZF_AUTO_COMPLETION="false"
export FZF_BASE=/usr/bin/fzf
export JAVA_HOME=/usr/lib/jvm/java-17-openjdk/

source $ZSH/oh-my-zsh.sh

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

export PAGER="less"

alias fuzzyvim='nvim $(fzf -m --preview="batcat --color=always {}")'
alias ll="ls -lah"

. "$HOME/.cargo/env"

eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
