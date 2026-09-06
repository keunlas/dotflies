#!/usr/bin/env bash
#
#

set -euo pipefail

DOTFILES_DIR="$(cd "$(dirname "$0")" && pwd)"

debug() { echo "[DEBUG] $@"; }
info() { echo "[INFO] $@"; }
warn() { echo "[WARN] $@"; }

link_file() {
  info "Linking file \"$1\" to \"$2/$(basename $1)\""

  if [ -e "$2/$(basename $1)" ]; then
    warn "Existed \"$2/$(basename $1)\" has been overwrite"
  fi

  ln -sf "$1" "$2"
}

link_dir() {
  info "Linking dir \"$1\" to \"$2/$(basename $1)\""

  if [ -e "$2/$(basename $1)" ]; then
    warn "Existed \"$2/$(basename $1)\" has been overwrite"
  fi

  rm -rf "$2/$(basename $1)"
  ln -sf "$1" "$2"
}

info "The directory of dotfiles is \"$DOTFILES_DIR\""

link_file "$DOTFILES_DIR/home/.bashrc"        "$HOME"
link_file "$DOTFILES_DIR/home/.vimrc"         "$HOME"
link_file "$DOTFILES_DIR/home/.gitconfig"     "$HOME"

link_dir "$DOTFILES_DIR/home/.config/my-bash"       "$HOME/.config"
link_dir "$DOTFILES_DIR/home/.config/fastfetch"     "$HOME/.config"
link_dir "$DOTFILES_DIR/home/.config/kitty"         "$HOME/.config"
link_dir "$DOTFILES_DIR/home/.config/pip"           "$HOME/.config"

