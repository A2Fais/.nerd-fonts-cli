# Nerd Font Installer & Shell Alias Configurator

This tool helps you to list, choose, and install fonts from Nerd Fonts. 

![image](https://github.com/user-attachments/assets/a1f76269-8829-46c4-b49c-10cb8aa90b8a)

### Usage

Run the installer script from the folder .nerd-fonts-cli:
      
    chmod +x install.sh && ./install.sh

Run to .config script that sets up alias 

    nerd-fonts 
in your .zshrc or .bashrc to quickly install your favorite fonts.

### Procedure:

  - Fonts are displayed in a numbered list.

  - You choose the number of the font you'd like to install.

  - The tool downloads the corresponding .zip from Nerd Fonts GitHub releases.

  - Font is extracted and installed to ~/.fonts.

### After installation, restart your terminal or run:
for zsh 

    source ~/.zshrc 
for bash    

    source ~/.bashrc

### Font Install Location

Fonts are installed into:

    cd ~/.fonts

### Uninstall

To remove an installed font, just delete it from ~/.fonts, and remove the alias line from your shell config file.

Clear the cache: 
      
    fc-cache -f -v 
