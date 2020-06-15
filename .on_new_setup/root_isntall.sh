# sh install_zsh_and_oh-my-zsh.sh  
apt install zsh
chsh -s $(which zsh)
if [$SHELL != "/bin/zsh/"]; then
	cat <<EOF Error: zsh not default shell. Try install and set by default manually.
EOF
exit 1
fi
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# sh update_git.sh
add-apt-repository ppa:git-core/ppa -y
apt-get update
sudo apt-get install git -y
echo $(git --version)

# sh init_git_repo.sh
cd ..
git init
git remote add origin https://github.com/vangogih/dotfiles
git checkout .
git pull --force origin master
exit 0
