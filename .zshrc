# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Set the directory we want to strore zoinit and plugins
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

# Download Zinit, if it's not there yet
[ ! -d $ZINIT_HOME ] && mkdir -p "$(dirname $ZINIT_HOME)"
[ ! -d $ZINIT_HOME/.git ] && git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"

# Source/load zinit
source "${ZINIT_HOME}/zinit.zsh"

# Add in Powerlevel10k
zinit ice depth"1" # git clone depth
zinit light romkatv/powerlevel10k

# Add in zsh plugins
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions

# Load completions
autoload -U compinit && compinit

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Completion styling
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)lS_COLORS}"

# Aliases
alias cls='clear'
alias ls='ls --color'

# Aliases for git
alias g='git'
# Alias git status
alias gst='git status'
alias gss='git status --short'
alias gsb='git status --short --branch'
# Alias for add file
alias ga='git add'
alias gaa='git add --all'
# Alias branch
alias gb='git branch'
alias gba='git branch --all'
alias gbd='git branch --delete'
# Alias commit
alias gcmsg='git commit --message'              # Commits staged changes with a message.
alias gc='git commit --verbose'                 # Commits staged changes verbosely.
alias gcam='git commit --all --message'         # Commits all changes with a message.
alias gca='git commit --verbose --all'          # Commits all changes verbosely
# Alias Push
alias gp='git push'
alias gl='git pull'
alias gm='git merge'


# fnm instalation
FNM_PATH="/Users/atipaq/Library/Application Support/fnm"
if [ -d "$FNM_PATH" ]; then
  export PATH="/Users/atipaq/Library/Application Support/fnm:$PATH"
  eval "`fnm env`"
fi

# Shell Setup fnm
eval "$(fnm env --use-on-cd --shell zsh)"