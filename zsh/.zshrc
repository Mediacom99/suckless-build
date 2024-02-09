# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Source alias file
if [[ -f "${ZDOTDIR}/aliasrc" ]]; then
  source "${ZDOTDIR}/aliasrc"
fi


#Source option file
if [[ -f "${ZDOTDIR}/optionrc" ]]; then
  source "${ZDOTDIR}/optionrc"
fi

# Source export file
if [[ -f "${ZDOTDIR}/exportrc" ]]; then
  source "${ZDOTDIR}/exportrc"
fi


# Setup history
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

# Add completions file in this folder so the plugin can use them
fpath+=$HOME/.config/zsh/zfunc

# Source theme
source "$HOME/powerlevel10k/powerlevel10k.zsh-theme"

# Source plugins
# source "${ZDOTDIR}/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh"
source "/usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
# source "${ZDOTDIR}/plugins/zsh-history-substring-search/zsh-history-substring-search.plugin.zsh"
# source "${ZDOTDIR}/plugins/history-substr-cfg.zsh"
# source "${ZDOTDIR}/plugins/zsh-vi-mode/zsh-vi-mode.plugin.zsh"
source "${ZDOTDIR}/plugins/zsh-autocomplete/zsh-autocomplete.plugin.zsh"
# source "${ZDOTDIR}/plugins/zsh-autocomplete-cfg.zsh"


#Setup default zsh autocompletion
# zstyle :compinstall ~/.config/zsh/.zshrc
# autoload -Uz compinit
# compinit
# zstyle '*:compinit' arguments -D -i -u -C -w




# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh


