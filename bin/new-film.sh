#!/bin/sh
# Tạo film mới từ template: bin/new-film.sh <slug>
set -e
slug="$1"
[ -z "$slug" ] && { echo "usage: $0 <film-slug>"; exit 1; }
root="$(cd "$(dirname "$0")/.." && pwd)"
dest="$root/films/$slug"
[ -e "$dest" ] && { echo "đã có $dest"; exit 1; }
cp -r "$root/films/_template" "$dest"
mkdir -p "$dest/out"
# copy fonts brand sẵn có (tiếng Việt đã verify)
cp -r "$root/films/dtnn-launch/assets/fonts" "$dest/assets/" 2>/dev/null || true
echo "Tạo xong $dest — sửa treatment.md rồi code index.html"
