# --- Tmux Auto-attach ---
# インタラクティブシェルかつターミナルの場合のみ自動起動
if command -v tmux >/dev/null 2>&1; then
  if [[ -o interactive && -t 0 && -z "$TMUX" ]]; then
    tmux attach || tmux new -s main
  fi
fi

# --- Tmux Aliases ---
alias t="tmux"
alias ta="tmux attach"
alias tl="tmux list-sessions"
