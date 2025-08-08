# ─── Starship Prompt ───────────────────────────────
eval "$(starship init zsh)"

# ─── Path ──────────────────────────────────────────
export PATH="$HOME/.cargo/bin:$PATH"

# ─── fnm (Fast Node Manager) ─────────────────────────
eval "$(fnm env --use-on-cd --shell zsh)"

# ─── pyenv (Python Environment) ─────────────────────────
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - zsh)"

# ─── Alias útiles ──────────────────────────────────
# ─── LS configuration ──────────────────────────────────
alias ll="ls -alF"
alias ls="ls --color=auto"

# ─── Utilidades ──────────────────────────────
alias ..="cd .."
alias c="clear"