# Add binaries to PATH for installed packages
export PATH="/opt/homebrew/opt/postgresql@16/bin:$PATH"
export PATH="$HOME/go/bin:$PATH"
. "$HOME/.local/bin/env"

# Setup Node Version Manager (NVM)
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # Load nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # Load nvm bash_completion

# Shell keybinds
bindkey -e

autoload -Uz edit-command-line
zle -N edit-command-line
bindkey '^X^E' edit-command-line
export EDITOR="nvim"
export VISUAL="nvim"

export MANPAGER='nvim +Man!'

export _ZO_RESOLVE_SYMLINKS=1
eval "$(zoxide init zsh --cmd cd)"

eval "$(direnv hook zsh)"

eval "$(starship init zsh)"
