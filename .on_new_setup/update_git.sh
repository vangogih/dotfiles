add-apt-repository ppa:git-core/ppa -y
apt-get update
sudo apt-get install git -y
echo $(git --version)
exit 0
