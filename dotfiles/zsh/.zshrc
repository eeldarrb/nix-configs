# Show current working directory as command prompt
PROMPT='%F{1}%1~%f %F{white}❯%f '

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

# Set bindings for Alt + left/right arrow keycodes
bindkey "\e[1;3D" backward-word
bindkey "\e[1;3C" forward-word

export MANPAGER='nvim +Man!'

export _ZO_RESOLVE_SYMLINKS=1
eval "$(zoxide init zsh --cmd cd)"
