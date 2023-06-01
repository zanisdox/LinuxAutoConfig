#!/bin/sh
rm -rf MesloLGS_NF
mkdir MesloLGS_NF
wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf -O MesloLGS_NF/MesloLGS_NF_Regular.ttf
wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf -O MesloLGS_NF/MesloLGS_NF_Bold.ttf
wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf -O MesloLGS_NF/MesloLGS_NF_Italic.ttf
wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf -O MesloLGS_NF/MesloLGS_NF_Bold_Italic.ttf

sudo cp -r MesloLGS_NF /usr/share/fonts
sudo fc-cache -v

git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh-custom/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting ~/.zsh-custom/zsh-syntax-highlighting
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.zsh-custom/powerlevel10k
echo 'source ~/.zsh-custom/zsh-autosuggestions/zsh-autosuggestions.zsh' >> ~/.zshrc
echo 'source ~/.zsh-custom/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh' >> ~/.zshrc
echo 'source ~/.zsh-custom/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc

rm -rf MesloLGS_NF
rm zsh.sh
