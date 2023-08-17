# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source $(brew --prefix)/share/antigen/antigen.zsh

# Load the oh-my-zsh's library
antigen use oh-my-zsh

# Load bundles from the default repo (robbyrussell's oh-my-zsh)
antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found
antigen bundle aliases
antigen bundle alias-finder

# Load bundles from external repos
antigen bundle zsh-users/zsh-autosuggestions
# antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-completions

# Load the theme
# antigen theme robbyrussell
# antigen theme romkatv/powerlevel10k
antigen theme pmcgee

# Tell Antigen that you're done
antigen apply

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Aliases
alias l='ls -l'
alias la='ls -A'
alias ll='ls -lah'
alias ls='ls --color=auto'

alias allspark='ssh autobot@192.168.0.100'
alias proxmox='ssh autobot@192.168.0.125'
alias all8='ssh autobot@199.241.137.130'
alias all32='ssh autobot@209.182.238.76'
alias all64='ssh autobot@89.233.108.176'