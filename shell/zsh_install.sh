#!/bin/sh
# Working in Root

# Get Username
userdir=$(pwd)
username=${userdir#"/home/"}

# OhMyZSH
command='sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended'
runuser -l  $username -c $command
    

# Extension Install
git clone https://github.com/zsh-users/zsh-autosuggestions $userdir/.ohmyzshExtensions/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting $userdir/.ohmyzshExtensions/zsh-syntax-highlighting
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $userdir/.ohmyzshExtensions/powerlevel10k
chmod -R 555 $userdir/.ohmyzshExtensions
echo 'source $userdir/.ohmyzshExtensions/zsh-autosuggestions/zsh-autosuggestions.zsh' >> $userdir/.zshrc
echo 'source $userdir/.ohmyzshExtensions/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh' >> $userdir/.zshrc
echo 'source $userdir/.ohmyzshExtensions/powerlevel10k/powerlevel10k.zsh-theme' >>$userdir/.zshrc

# Fonts Downloads
fontdir='/usr/share/fonts'
mkdir $userdir/tempFonts
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/Hack.zip -P $userdir/tempFonts
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/DejaVuSansMono.zip -P $userdir/tempFonts
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/ComicShannsMono.zip -P $userdir/tempFonts
unzip $userdir/tempFonts/Hack.zip -d $fontdir/Hack
unzip $userdir/tempFonts/DejaVuSansMono.zip -d $fontdir/DejaVuSansMono
unzip $userdir/tempFonts/ComicShannsMono.zip -d $fontdir/ComicShannsMono
rm -rf $userdir/tempFonts
fc-cache -v

# Change User Shell
chsh -s $(which zsh)

