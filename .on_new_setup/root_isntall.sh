#!/bin/bash

# sh install_zsh_and_oh-my-zsh.sh  
apt install zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# sh update_git.sh
add-apt-repository ppa:git-core/ppa -y
apt-get update
apt-get install git -y
echo $(git --version)

# sh init_git_repo.sh
cd ..
git init
git remote add origin https://github.com/vangogih/dotfiles
git checkout .
git pull origin master
git clean -f
git pull origin master

# download powerline10k theme
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM}/themes/powerlevel10k
exit 0
