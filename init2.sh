apt install -y sudo
sudo timedatectl set-timezone Asia/Shanghai
sudo timedatectl set-ntp true
sudo apt update -y && sudo apt upgrade -y
sudo apt remove -y vim-common
sudo apt install -y wget curl screen apt-transport-https dirmngr gnupg gnupg1 gnupg2 vim
cd /etc/apt
rm sources.list
wget https://raw.githubusercontent.com/SekiBetu/Linux/main/sources.list
curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -
apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 0xF1656F24C74CD1D8
wget https://nginx.org/keys/nginx_signing.key && apt-key add nginx_signing.key
curl -s https://deb.nodesource.com/gpgkey/nodesource.gpg.key | apt-key add -
wget -q -O- https://packages.sury.org/php/apt.gpg | apt-key add -
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add -
wget -nc https://dl.winehq.org/wine-builds/winehq.key && apt-key add winehq.key && rm winehq.key
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
sudo apt update -y && sudo apt upgrade -y
sudo apt install -y php php-fpm
echo 'deb http://deb.xanmod.org releases main' | sudo tee /etc/apt/sources.list.d/xanmod-kernel.list
wget -qO - https://dl.xanmod.org/gpg.key | sudo apt-key --keyring /etc/apt/trusted.gpg.d/xanmod-kernel.gpg add -
sudo apt update -y && sudo apt upgrade -y && sudo apt install -y linux-xanmod-cacule
