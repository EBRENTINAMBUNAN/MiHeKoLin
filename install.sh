#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(CDPATH= cd -- "$(dirname "$0")" && pwd)"
INSTALLER="$SCRIPT_DIR/mihekolin-installer"

if [[ ! -f "$INSTALLER" ]]; then
  echo "ERROR: file mihekolin-installer tidak ditemukan di folder release ini." >&2
  exit 1
fi

echo "Menjalankan installer Mihekolin..."
chmod +x "$INSTALLER"
"$INSTALLER"

echo
echo "Instalasi selesai."
echo
echo "Jika command belum dikenali di terminal saat ini, jalankan:"
echo "  source ~/.bashrc"
echo
echo "Lalu cek dengan:"
echo "  mihekolin"
echo "  mihekolin --help"
