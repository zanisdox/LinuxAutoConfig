#!/bin/sh

# OhMyZSH
sudo dnf install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# Extension Install
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.ohmyzshExtensions/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting ~/.ohmyzshExtensions/zsh-syntax-highlighting
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.ohmyzshExtensions/powerlevel10k
echo 'source ~/.ohmyzshExtensions/zsh-autosuggestions/zsh-autosuggestions.zsh' >> ~/.zshrc
echo 'source ~/.ohmyzshExtensions/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh' >> ~/.zshrc
echo 'source ~/.ohmyzshExtensions/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc

# Fonts Downloads
fonts = '/usr/share/fonts'
mkdir tempFonts
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/Hack.zip -P tempFonts
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/DejaVuSansMono.zip -P tempFonts
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/ComicShannsMono.zip -P tempFonts
sudo unzip tempFonts/Hack.zip -d $fonts/Hack
sudo unzip tempFonts/DejaVuSansMono.zip -d $fonts/DejaVuSansMono
sudo unzip tempFonts/ComicShannsMono.zip -d $fonts/ComicShannsMono
rm -rf tempFonts
sudo fc-cache -v

# Change User Shell
chsh -s $(which zsh)
