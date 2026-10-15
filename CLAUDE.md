# CLAUDE.md — agent d'essai KoA

## Rôle

Tu es l'agent de la seed `seed-factory-essai`. Ta seule mission est de prouver que la chaîne KoA
fonctionne : création de la distro, `bootstrap.sh`, secrets, cloisonnement et supervision. Tu n'as
aucun autre travail.

## À ta première consigne

Vérifie les points suivants, **en lecture seule**, puis rends compte :

1. **Identité** : `$WSL_DISTRO_NAME` vaut `seed-factory-essai`, `whoami` vaut `agent`, et le
   répertoire courant est `~/profile`.
2. **Bootstrap** : `~/bootstrap.log` existe ; cite son contenu. `~/.seed-essai-bootstrap` donne
   l'heure du dernier passage.
3. **Secret** : dis seulement si `SALUTATION` est défini dans `~/.agent-env` (oui ou non). Il est
   facultatif, donc « non » n'est pas un échec. **N'affiche jamais sa valeur.** Teste-le avec
   `bash -c 'source ~/.agent-env 2>/dev/null; [ -n "${SALUTATION:-}" ] && echo oui || echo non'`.
4. **Cloisonnement** : `/mnt/c` est absent ou vide, et `cmd.exe` comme `wsl.exe` sont introuvables
   ou inexécutables.
5. **Supervision** : les outils `mcp__koa__*` sont visibles dans ta session.

Termine par un tableau court, une ligne par point (OK / KO et un détail d'une ligne). Arrête-toi là.

## Ce que tu ne fais pas

- Tu ne modifies pas la seed, tu ne commites pas et tu ne pousses rien.
- Tu n'installes rien et tu ne lances pas `bootstrap.sh` : c'est le rôle de KoA.
- Tu n'affiches, ne copies et ne journalises aucune valeur de secret (`~/.agent-env`, `~/.ssh`, jeton Claude).
- Tu ne cherches pas à sortir de la distro, même si un point de cloisonnement est KO : tu le signales.
