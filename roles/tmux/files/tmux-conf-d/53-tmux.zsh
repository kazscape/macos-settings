if command -v tmux >/dev/null 2>&1; then
  # --- Tmux Wrapper ---
  # `tmux` (no args) normally creates a new session each time.
  # This wrapper prefers: attach existing session -> otherwise create a stable one.
  tmux() {
    if [[ $# -eq 0 ]]; then
      if [[ -n "$TMUX" ]]; then
        command tmux list-sessions
        return
      fi

      command tmux attach 2>/dev/null || command tmux new -s "${TMUX_DEFAULT_SESSION:-main}"
      return
    fi

    command tmux "$@"
  }

  # --- Tmux Auto-attach ---
  # インタラクティブシェルかつターミナルの場合のみ自動起動
  if [[ -o interactive && -t 0 && -z "$TMUX" ]]; then
    tmux
  fi

  # --- Tmux Aliases ---
  alias t="tmux"
  alias ta="tmux attach"
  alias tl="tmux list-sessions"
fi
