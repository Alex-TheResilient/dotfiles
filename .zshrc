# ─── Starship Prompt ───────────────────────────────
eval "$(starship init zsh)"

# ─── Path ──────────────────────────────────────────
export PATH="$HOME/.cargo/bin:$PATH"

# ─── fnm (Fast Node Manager) ─────────────────────────
eval "$(fnm env --use-on-cd --shell zsh)"

# ─── Alias útiles ──────────────────────────────────
alias ll="ls -alF"
alias gs="git status"
alias ..="cd .."