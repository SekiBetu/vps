
## Useful Path

```
/etc/sysctl.d/
```

```
/usr/share/nginx/html
```

```
/etc/nginx/conf.d/
```

```
/etc/php/8.0/fpm/pool.d/
```

```
/var/log/nginx/
```

## Useful Commands


```shell
apt install -y sudo
```

```
sudo timedatectl set-timezone Asia/Shanghai

sudo timedatectl set-ntp true
```

```shell
sudo apt update -y && sudo apt upgrade -y
```

```shell
sudo apt --purge autoremove -y
```

```shell
sudo apt remove -y vim-common
```

```shell
sudo apt install -y wget curl screen apt-transport-https dirmngr gnupg gnupg1 gnupg2 vim
```

```shell
vim /etc/ssh/sshd_config
```

```shell
kill -9 $(ps -ef | grep record | grep -v grep | awk '{print $2}')
```

```shell
cat /dev/null > nohup.out
```

```shell
ps aux|grep 
```

## Shell Scripts

#### 三网测速脚本：

```shell
bash <(curl -Lso- https://git.io/superspeed)
```

#### 一键DD脚本(默认密码cxthhhhh.com)：

https://www.cxthhhhh.com/Network-Reinstall-System-Modify

```shell
wget --no-check-certificate -qO ~/Network-Reinstall-System-Modify.sh 'https://www.cxthhhhh.com/CXT-Library/Network-Reinstall-System-Modify/Network-Reinstall-System-Modify.sh' && chmod a+x ~/Network-Reinstall-System-Modify.sh && bash ~/Network-Reinstall-System-Modify.sh -UI_Options
```

#### 安装xanmod内核相关指令

https://xanmod.org/

```shell
echo 'deb http://deb.xanmod.org releases main' | sudo tee /etc/apt/sources.list.d/xanmod-kernel.list
```

```shell
wget -qO - https://dl.xanmod.org/gpg.key | sudo apt-key --keyring /etc/apt/trusted.gpg.d/xanmod-kernel.gpg add -
```

```shell
sudo apt update -y && sudo apt upgrade -y && sudo apt install -y linux-xanmod-cacule
```

#### 卸载旧内核相关指令：

```shell
uname -a
```

```shell
dpkg --list | egrep -i --color 'linux-image|linux-headers'
```

```shell
sudo dpkg --purge --force-remove-essential linux-image-
```

#### BBR加速脚本(内含上述一键DD脚本)：

```shell
wget -N --no-check-certificate "https://raw.githubusercontent.com/ylx2016/Linux-NetSpeed/master/tcp.sh" && chmod +x tcp.sh
```

#### 代理脚本(内含上述BBR加速脚本)：

```shell
wget -P /root -N --no-check-certificate "https://raw.githubusercontent.com/mack-a/v2ray-agent/master/install.sh" && chmod 700 /root/install.sh && /root/install.sh
```

一键脚本外的一些改动
```json
"fallbacks": [
    {"alpn":"http/1.1","dest":31300},
    {"alpn":"h2","dest":31301}
    ]

"alpn": [
    "http/1.1",
    "h2"
    ],
```

#### 中转转发工具：

https://github.com/KANIKIG/Multi-EasyGost

https://github.com/Qv2ray/mmp-go

#### 自用初始化脚本：

```shell
curl https://raw.githubusercontent.com/SekiBetu/Linux/main/init.sh | bash
```

```shell
curl https://raw.githubusercontent.com/SekiBetu/Linux/main/restart.sh | bash
```

```shell
curl https://raw.githubusercontent.com/SekiBetu/Linux/main/xray.sh | bash
```

```shell
curl https://raw.githubusercontent.com/SekiBetu/Linux/main/build_xray.sh | bash
```

```shell
curl https://raw.githubusercontent.com/SekiBetu/Linux/main/update_xray.sh | bash
```

## 杂项

#### OracleJDK

https://www.oracle.com/java/technologies/javase-jdk8-downloads.html

https://gist.github.com/wavezhang/ba8425f24a968ec9b2a8619d7c2d86a6#gistcomment-3425441

```shell
wget https://javadl.oracle.com/webapps/download/GetFile/1.8.0_291-b10/d7fc238d0cbf4b0dac67be84580cfb4b/linux-i586/jre-8u291-linux-x64.tar.gz
sudo tar -C /usr/local -zxvf jre-8u291-linux-x64.tar.gz
echo 'export PATH=$PATH:/usr/local/jre1.8.0_291/bin'>>~/.bashrc
export PATH=$PATH:/usr/local/jre1.8.0_291/bin
source ~/.bashrc
```

#### AdoptOpenJDK

https://adoptopenjdk.net/installation.html?variant=openjdk11&jvmVariant=openj9#x64_linux-jre

```shell
wget -qO - https://adoptopenjdk.jfrog.io/adoptopenjdk/api/gpg/key/public | sudo apt-key add -
echo "deb https://adoptopenjdk.jfrog.io/adoptopenjdk/deb buster main" | sudo tee /etc/apt/sources.list.d/adoptopenjdk.list
sudo apt update
sudo apt install -y adoptopenjdk-11-openj9-jre
```

#### Liberica OpenJDK

https://bell-sw.com/pages/repositories/

```shell
wget -q -O - https://download.bell-sw.com/pki/GPG-KEY-bellsoft | sudo apt-key add -
echo "deb [arch=amd64] https://apt.bell-sw.com/ stable main" | sudo tee /etc/apt/sources.list.d/bellsoft.list
sudo apt update
sudo apt install bellsoft-java11-runtime-full
```

#### 7zip

```shell
mkdir 7zip ; cd 7zip/ ; wget https://7-zip.org/a/7z2102-linux-x64.tar.xz
xz -d 7z2101-linux-x64.tar.xz ; tar -xvf 7z2101-linux-x64.tar
sudo mv 7zz /usr/bin/
cd .. ; sudo rm -rf 7zip/
```

#### mirai

```shell
mkdir mirai ; cd mirai ; wget https://github.com/iTXTech/mirai-console-loader/releases/download/v1.0.5/mcl-1.0.5.zip ; unzip mcl-1.0.5.zip ; chmod +x mcl mkdir plugins ; cd plugins ; wget https://github.com/Colter23/bilibili-dynamic-mirai-plugin/releases/download/1.0.3/bilibili-dynamic-mirai-plugin-1.0.3.mirai.jar ; cd .. ; mkdir DynamicPlugin ; cd DynamicPlugin ; mkdir font ; cd font ; wget https://github.com/Colter23/bilibili-dynamic-mirai-plugin/raw/master/DynamicPlugin/font/%E6%80%9D%E6%BA%90%E9%BB%91%E4%BD%93.ttf
```

#### Twitch Drop

```shell
sudo apt install -y git nodejs chromium
sudo npm install -g npm
git clone https://github.com/SekiBetu/TwitchDropGrabber.git
cd TwitchDropGrabber ; sudo npm install ; sudo npm run build
echo "rainbow6" > game.txt ; mv .env.example .env
npm start -- -f "game.txt" -g "Tom Clancy's Rainbow Six Siege"

wget https://raw.githubusercontent.com/SekiBetu/Linux/main/twitch.sh

crontab -e
0 * * * * /bin/bash /home/user/twitch.sh
```

#### Go语言支持的TLS密码套件清单：

https://github.com/golang/go/blob/master/src/crypto/tls/cipher_suites.go#L474

#### debian源

https://debgen.simplylinux.ch/

`/etc/apt/sources.list`

```shell
curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -
wget https://nginx.org/keys/nginx_signing.key && apt-key add nginx_signing.key
curl -s https://deb.nodesource.com/gpgkey/nodesource.gpg.key | apt-key add -
wget -q -O- https://packages.sury.org/php/apt.gpg | apt-key add -
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
```


#### PHP探针

```shell
sudo apt install -y php php-fpm
```

https://github.com/kmvan/x-prober

```shell
wget https://github.com/kmvan/x-prober/raw/master/dist/prober.php
```

nginx配置改动
```Nginx
server {
    listen 31301 http2;
    location ~ \.php$ {
        fastcgi_pass unix:/var/run/php/php8.0-fpm.sock;
        fastcgi_index prober.php;
        fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;
        include fastcgi_params;
    }
}
```

如果遇到
```shell
connect() to unix:/var/run/php/php8.0-fpm.sock failed (13: Permission denied) while connecting to upstream
```

就按以下步骤修改监听用户为nginx
```shell
vim /etc/php/8.0/fpm/pool.d/www.conf

; listen.owner = www-data
; listen.group = www-data
listen.owner = nginx
listen.group = nginx
```

## 相关链接

https://github.com/JustArchiNET/ArchiSteamFarm/releases/

https://www.python.org/downloads/

https://golang.org/dl/