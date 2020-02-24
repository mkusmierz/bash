#!/bin/bash

NEW="$(pwd)"
PROJECT1="/home/vagrant/code/project1"
PROJECT2="/home/vagrant/code/project2"
PROJECT3="/home/vagrant/code/project3"
PROJECT4="/home/vagrant/code/project4"
PROJECT5="/home/vagrant/code/project5"
PROJECT6="/home/vagrant/code/project6"
PROJECT7="/home/vagrant/code/project7"
PROJECT8="/home/vagrant/code/project8"
PROJECT9="/home/vagrant/code/project9"
PROJECT10="/home/vagrant/code/project10"
PROJECT11="/home/vagrant/code/project11"
PROJECT12="/home/vagrant/code/project12"
PROJECT13="/home/vagrant/code/project13"
PROJECT14="/home/vagrant/code/project14"
PROJECT15="/home/vagrant/code/project15"
PROJECT16="/home/vagrant/code/project16"
PROJECT17="/home/vagrant/code/project17"
PROJECT18="/home/vagrant/code/project18"
PROJECT19="/home/vagrant/code/project19"
PROJECT20="/home/vagrant/code/project20"
PROJECT21="/home/vagrant/code/project21"
PROJECT22="/home/vagrant/code/project22"

php72(){
echo 'php72'
sudo update-alternatives --set php /usr/bin/php7.2 &&
sudo update-alternatives --set php-config /usr/bin/php-config7.2 &&
sudo update-alternatives --set phpize /usr/bin/phpize7.2
}

php71(){
echo 'php71'
sudo update-alternatives --set php /usr/bin/php7.1
sudo update-alternatives --set php-config /usr/bin/php-config7.1
sudo update-alternatives --set phpize /usr/bin/phpize7.1
}

php70(){
echo 'php70'
sudo update-alternatives --set php /usr/bin/php7.0
sudo update-alternatives --set php-config /usr/bin/php-config7.0
sudo update-alternatives --set phpize /usr/bin/phpize7.0
}

php56(){
echo 'php56'
sudo update-alternatives --set php /usr/bin/php5.6
sudo update-alternatives --set php-config /usr/bin/php-config5.6
sudo update-alternatives --set phpize /usr/bin/phpize5.6
}

info(){
echo "Choose project main directory"
}

new(){
sudo lmm merge backup
git checkout "$1"
#git pull
composer clearcache;
composer install;
composer dump-autoload;
yarn install;
yarn build:dev;
sudo service nginx restart;
}

old(){
sudo lmm merge backup
git checkout "$1"
git fetch origin;
composer clearcache;
composer install;
composer dump-autoload;
bower install;
sudo service nginx restart;
}

if [ $NEW = $PROJECT1 ] || [ $NEW = $PROJECT2 ] || [ $NEW = $PROJECT3 ]
then
php72
old

else
if [ $NEW = $PROJECT4 ]
then
php72
new

else
if [ $NEW = $PROJECT5 ] || [ $NEW = $PROJECT6 ] || [ $NEW = $PROJECT7 ] || [ $NEW = $PROJECT8 ] || [ $NEW = $PROJECT9 ] || [ $NEW = $PROJECT10 ] || [ $NEW = $PROJECT11 ]
then
php71
old

else
if [ $NEW = $PROJECT12 ]
then
php70
old

else
if [ $NEW = $PROJECT13 ] || [ $NEW = $PROJECT14 ] || [ $NEW = $PROJECT15 ] || [ $NEW = $PROJECT16 ] || [ $NEW = $PROJECT17 ] || [ $NEW = $PROJECT18 ] || [ $NEW = $PROJECT19 ] || [ $NEW = $PROJECT20 ] || [ $NEW = $PROJECT21 ] || [ $NEW = $PROJECT22 ]
then
php56
old

else
info
fi
fi
fi
fi
fi
