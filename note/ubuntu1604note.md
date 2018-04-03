> Ubuntu 16.04 ●☀☺♦♣♥♠★■▲◇○✔✘•▇

## Install: vim, git, openssh-server, tmux
```shell
uname -a
sudo mv /etc/apt/sources.list /etc/apt/sources.list.bak
更新为tsinghua或阿里源
sudo apt-get update
sudo apt install vim
sudo apt-get install openssh-server
sudo service ssh start
sudo apt-get install tmux
vim ~/.tmux.conf
# set-option -g mouse on
sudo apt install git
ssh-keygen -t rsa -b 2048 -C "uname@email.com"
git clone https://github.com/uname/xxx.git
git config --global user.email "uname@email.com"
git config --global user.name "uname"
git config --global push.default simple
```

## Python
> 系统默认安装了Python 2.7.12 和 Python 3.5.2
```shell
# 安装pip和virtualenv
$ sudo apt-get install python-pip python-dev build-essential
$ sudo pip install --upgrade pip
$ sudo pip install --upgrade virtualenv

# 安装 python3-venv
apt-get install python3-venv

mkdir pyenv3
python3 -m venv pyenv3/venv1
source pyenv3/venv1/bin/activate
python # 环境OK
pip freeze > req0.txt
pip install --upgrade pip
```

## mongoengine
> http://docs.mongoengine.org/tutorial.html
```shell
● install mongo
sudo apt-get install mongodb
## sudo apt install mongodb
## sudo apt install mongodb-clients
mongo -version
service mongodb start
service mongodb stop
pgrep mongo -l # 查看是否启动, 默认MongoDB是随Ubuntu启动的。
● install mongoengin
pip install mongoengine
```

