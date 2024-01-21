# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

### PATH
export PATH=$HOME/bin:/usr/local/bin:$PATH
### ZSH HOME
export ZSH=$HOME/.zsh
### ---- history config 
export HISTFILE=$ZSH/.zsh_history
export HISTSIZE=10000
export SAVEHIST=10000
# History won't save duplicates.
setopt HIST_IGNORE_ALL_DUPS
# History won't show duplicates on search.
setopt HIST_FIND_NO_DUPS
# ls fixes
if [ -x /usr/bin/dircolors ]; then
      test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
      alias ls='ls --color=auto'
      alias dir='dir --color=auto'
      alias vdir='vdir --color=auto'
      alias grep='grep --color=auto'
      alias fgrep='fgrep --color=auto'
      alias egrep='egrep --color=auto'
  fi

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Source plugins
#source $ZSH/themes/eastwood.zsh-theme/eastwood.zsh-theme.zsh
source $ZSH/themes/powerlevel10k/powerlevel10k.zsh-theme

source $ZSH/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
source $ZSH/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Turn off all beeps
unsetopt BEEP
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
 source /usr/share/doc/fzf/examples/key-bindings.zsh
fpath+=${ZDOTDIR:-~}/.zsh_functions

