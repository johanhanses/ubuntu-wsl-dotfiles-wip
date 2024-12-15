# node 22
curl -fsSL https://deb.nodesource.com/setup_22.x -o nodesource_setup.sh
sudo apt-get install -y nodejs
echo "installed node version: " 
node -v
rm nodesource_setup.sh    
# node end

# various packages
sudo apt install -y \
    git \
    zsh \
    neovim \
    fzf \
    tree \
    nnn \
    eza \
    git-delta \
    bat
# packages end

# docker
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update

sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

sudo groupadd docker
sudo usermod -aG docker $USER
sudo systemctl enable docker.service
sudo systemctl enable containerd.service
sudo systemctl start docker
# docker end
