#!/bin/bash

configure_shell() {
  local shell_rc="$1"
  local config='
nerd_fonts_cli() {
  cd ~/.nerd-fonts-cli/ || return
  chmod +x install.sh
  ./install.sh
}
alias nerd-fonts="nerd_fonts_cli"
'

  if ! grep -q "nerd_fonts_cli()" "$shell_rc"; then
    echo "$config" >>"$shell_rc"
    echo "Configuration added to $shell_rc"
  else
    echo "Configuration already exists in $shell_rc"
  fi

  if [[ "$SHELL" == *"${shell_rc##*/}" ]]; then
    source "$shell_rc"
    echo "Sourced $shell_rc"
  fi
}

echo "Select your shell for Nerd Fonts CLI configuration:"
echo "1) zsh (~/.zshrc)"
echo "2) bash (~/.bashrc)"
read -p "Enter your choice (1 or 2): " choice

case $choice in
1)
  configure_shell ~/.zshrc
  ;;
2)
  configure_shell ~/.bashrc
  ;;
*)
  echo "Invalid choice. Please run the script again and select 1 or 2."
  exit 1
  ;;
esac

echo "Configured successfully!"
