#!/bin/bash
echo 'Qual será o nome do projeto? '; read ProjectName
mkdir -p $ProjectName/Aplication
sudo pip3 install virtualenv 
virtualenv --python='/usr/bin/python3.6' $ProjectName
source $ProjectName/bin/activate
diretorio=$(pwd)
diretorio=${diretorio%'/'}
cd $diretorio$'/'$ProjectName'/Aplication/'
echo $(pwd)
>OwnLibraries.py 
>main.py
