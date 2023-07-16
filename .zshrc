export ZSH="$HOME/.oh-my-zsh"
export ZSH_CFG_DIR="$HOME/.config/zsh"

source $ZSH_CFG_DIR/antigen.zsh

antigen use oh-my-zsh

antigen theme steeef

antigen bundle git
antigen bundle command-not-found
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen bundle docker
antigen bundle docker-compose
antigen bundle doctl
antigen bundle dotenv
antigen bundle colorize
antigen bundle common-aliases
antigen bundle fzf
antigen bundle gh
antigen bundle git
antigen bundle httpie
antigen bundle kubectl
antigen bundle nvm
antigen bundle npm
antigen bundle rust
antigen bundle rsync
antigen bundle sudo
antigen bundle terraform
antigen bundle tmux
antigen bundle urltools
antigen bundle vscode
antigen bundle brew
antigen bundle extract

antigen apply

# Add doppler autocomplete.
source <(doppler completion 2> /dev/null)


# # place this after nvm initialization!
# autoload -U add-zsh-hook

# load-nvmrc() {
#   local nvmrc_path
#   nvmrc_path="$(nvm_find_nvmrc)"

#   if [ -n "$nvmrc_path" ]; then
#     local nvmrc_node_version
#     nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

#     if [ "$nvmrc_node_version" = "N/A" ]; then
#       nvm install
#     elif [ "$nvmrc_node_version" != "$(nvm version)" ]; then
#       nvm use
#     fi
#   elif [ -n "$(PWD=$OLDPWD nvm_find_nvmrc)" ] && [ "$(nvm version)" != "$(nvm version default)" ]; then
#     echo "Reverting to nvm default version"
#     nvm use default
#   fi
# }

# add-zsh-hook chpwd load-nvmrc
# load-nvmrc

# pnpm
export PNPM_HOME="~/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

eval "$(zoxide init zsh)"
autoload -U compinit; compinit

# Apply my customizations after everything to ensure they are not overwritten.
source $ZSH_CFG_DIR/functions.sh
source $ZSH_CFG_DIR/aliases.sh
source $ZSH_CFG_DIR/vars.sh
source $ZSH_CFG_DIR/secrets.sh

