#!/usr/bin/env bash
# Rejouable : KoA le relance à chaque reprovisionnement. Ne journalise jamais la valeur d'un secret.
set -euo pipefail
[ -f "$HOME/.agent-env" ] && source "$HOME/.agent-env"

{
  echo "bootstrap : $(date -Is)"
  echo "distro=${WSL_DISTRO_NAME:-?} utilisateur=$(whoami) seed=$(pwd)"
  if [ -n "${SALUTATION:-}" ]; then echo "SALUTATION=présente"; else echo "SALUTATION=absente"; fi
} | tee "$HOME/bootstrap.log"

# Marqueur écrasé à chaque passage : prouve qu'un reprovisionnement a rejoué le bootstrap.
date -Is > "$HOME/.seed-essai-bootstrap"
