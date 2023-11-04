# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh. And put your alias in ~/.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias ls='lsd -a'
alias ll='lsd -al'
alias cat='bat'
alias vim='nvim'
alias vi='vim'
alias mv='mv -i'
alias rm='rm -i'
alias shutdown='shutdown now'
alias gs='git status'
alias inkshort='python ~/github/inkscape-shortcut-manager/main.py'
alias py='python'
alias study='cd ~/documents/study/year-2/semester-1/'
alias labor='cd ~/documents/study/year-2/semester-1/phys-f-210/labo/'
alias gitlab='cd ~/documents/study/year-2/semester-1/info-f-207/'

# Created by `pipx` on 2023-10-01 16:39:25
export PATH="$PATH:/home/shinkala/.local/bin"

# All the personnal script alias 

alias cwd='cwd.sh'

# Load the color

autoload -U colors && colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

# Basic auto/tab complete:

autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)

bindkey '^ ' autosuggest-accept

# Load the plugin

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh 2>/dev/null
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
source /usr/share/autojump/autojump.zsh 2>/dev/null
