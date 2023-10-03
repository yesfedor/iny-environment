#!/bin/bash

# Обновление списка пакетов и установка Git
sudo apt update
sudo apt install -y git

# Настройка git
git config --global user.name "Environment"
git config --global user.email yesfedor.go@gmail.com

# Создание папки /home/dev
mkdir /home/dev

# Генерация SSH ключей
yes | ssh-keygen -t ed25519 -C "Environment" -f /home/dev/id_ed25519 -q -N ""

# Копирование публичного ключа в /home/dev/ssh.txt
cat /home/dev/id_ed25519.pub > /home/dev/ssh.txt

# Установка NVM (Node Version Manager)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash

# Обновление профиля, чтобы получить доступ к команде nvm
source ~/.profile

# Установка Node.js версии 18
nvm install 18
nvm use 18

# Создать сеть network
docker network create network

# Склонировать репозиторий и выполнить env.sh
git clone https://github.com/yesfedor/iny-environment.git /home/dev/iny-environment
cd /home/dev/iny-environment
chmod +x env.sh
./env.sh

# Вывод содержимого файла /home/dev/ssh.txt на экран
cat /home/dev/ssh.txt
