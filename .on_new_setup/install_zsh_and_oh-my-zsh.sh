apt install zsh
chsh -s $(which zsh)
if [$SHELL != "/bin/zsh/"]; then
	cat <<EOF Error: zsh not default shell. Try install and set by default manually.
EOF
exit 1
fi
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
