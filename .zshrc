
# Plugin path
ZSH_PLUGINS="$HOME/.config/zsh/plugins"

# Plugins
source "$ZSH_PLUGINS/zsh-completions/zsh-completions.plugin.zsh"
source "$ZSH_PLUGINS/zsh-autosuggestions/zsh-autosuggestions.zsh"
source "$ZSH_PLUGINS/fzf-tab/fzf-tab.plugin.zsh"

# Load completions
autoload -Uz compinit && compinit 
_comp_options+=(globdots)


# Use fd instead of find
export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'

# For directory search with **CTRL-T**
export FZF_ALT_C_COMMAND='fd --type d --hidden --follow --exclude .git'

# Optional: preview with bat when using CTRL-T
#export FZF_CTRL_T_OPTS="--preview 'bat --style=numbers --color=always --line-range :500 {}'"

# Use fd instead of find
# export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'
# export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
# export FZF_ALT_C_COMMAND='fd --type d --hidden --follow --exclude .git'


export FZF_DEFAULT_OPTS="
  --style full \
  --layout=reverse \
  --border \
  --padding=1,2 \
  --preview 'bat --style=numbers --color=always {} || cat {}' \
  --preview-window=right:60% \
  --bind 'ctrl-/:toggle-preview' \
  --color=bg:#1E1E2E,bg+:#313244,fg:#CDD6F4,fg+:#CDD6F4 \
  --color=border:#585B70,header:#89B4FA,gutter:#1E1E2E \
  --color=spinner:#F5C2E7,hl:#89B4FA,hl+:#89B4FA \
  --color=pointer:#F38BA8,marker:#A6E3A1,info:#94E2D5 \
  --color=prompt:#FAB387,query:#F9E2AF \
  --color=preview-border:#B4BEFE,preview-label:#89B4FA \
  --color=scrollbar:#585B70
"
    
# Keybindings
bindkey -e
bindkey '^p' history-search-backward
bindkey '^n' history-search-forward
bindkey '^[w' kill-region

# History
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# Completion styling
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'
zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'ls --color $realpath'

### ALIASES ###

# Navigation
alias ..='cd ..'
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'

# Editors
alias vim='nvim'
alias emacs="emacsclient -c -a 'emacs'"
alias em='/usr/bin/emacs -nw'
alias rem="killall emacs || echo 'Emacs server not running'; /usr/bin/emacs --daemon"

# File listing (using eza)
alias ls='eza -al --color=always --icons --group-directories-first'
alias la='eza -a --color=always --icons --group-directories-first'
alias ll='eza -l --color=always --icons --group-directories-first'
alias lt='eza -aT --color=always --icons --group-directories-first'
alias l.='eza -al --color=always --group-directories-first ../'
alias l..='eza -al --color=always --group-directories-first ../../'
alias l...='eza -al --color=always --group-directories-first ../../../'

# Package management
alias pacsyu='sudo pacman -Syu'
alias pacsyyu='sudo pacman -Syyu'
alias parsua='paru -Sua --noconfirm'
alias parsyu='paru -Syu --noconfirm'
alias unlock='sudo rm /var/lib/pacman/db.lck'
alias orphan='sudo pacman -Rns (pacman -Qtdq)'

# Mirror updates
alias mirror="sudo reflector -f 30 -l 30 --number 10 --verbose --save /etc/pacman.d/mirrorlist"
alias mirrord="sudo reflector --latest 50 --number 20 --sort delay --save /etc/pacman.d/mirrorlist"
alias mirrors="sudo reflector --latest 50 --number 20 --sort score --save /etc/pacman.d/mirrorlist"
alias mirrora="sudo reflector --latest 50 --number 20 --sort age --save /etc/pacman.d/mirrorlist"

# Utilities
alias df='df -h'
alias free='free -m'
alias grep='grep --color=auto'

# Process management
alias psa="ps auxf"
alias psgrep="ps aux | grep -v grep | grep -i -e VSZ -e"
alias psmem='ps auxf | sort -nr -k 4'
alias pscpu='ps auxf | sort -nr -k 3'

# Xresources
alias merge='xrdb -merge ~/.Xresources'

# Git
alias addup='git add -u'
alias addall='git add .'
alias branch='git branch'
alias checkout='git checkout'
alias clone='git clone'
alias commit='git commit -m'
alias fetch='git fetch'
alias pull='git pull origin'
alias push='git push origin'
alias tag='git tag'
alias newtag='git tag -a'

# System logs
alias jctl="journalctl -p 3 -xb"

# GPG
alias gpg-check="gpg2 --keyserver-options auto-key-retrieve --verify"
alias gpg-retrieve="gpg2 --keyserver-options auto-key-retrieve --receive-keys"

# Shell switching
alias tobash="chsh $USER -s /bin/bash && echo 'Log out and log back in for change to take effect.'"
alias tozsh="chsh $USER -s /bin/zsh && echo 'Log out and log back in for change to take effect.'"
alias tofish="chsh $USER -s /bin/fish && echo 'Log out and log back in for change to take effect.'"

# Fonts in tty
alias bigfont="setfont ter-132b"
alias regfont="setfont default8x16"

# Dotfiles
alias config="/usr/bin/git --git-dir=$HOME/dotfiles --work-tree=$HOME"

# Networking / fun
alias tb="nc termbin.com 9999"
alias rr='curl -s -L https://raw.githubusercontent.com/keroserene/rickrollrc/master/roll.sh | bash'

# Misc
alias mocp="bash -c mocp"

# DWM
alias cdwm="vim ~/suckless/dwm/config.h"
alias mdwm=" ~/suckless/dwm; sudo make clean install; cd -"

# Starship prompt
eval "$(starship init zsh)"

# Shell integrations
eval "$(fzf --zsh)"
eval "$(zoxide init --cmd cd zsh)"

# --- the fuck ---
eval $(thefuck --alias)
eval $(thefuck --alias fk)

#sytax-highlighting should be last:
source "$ZSH_PLUGINS/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
