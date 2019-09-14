#!/bin/bash

echo 'Qual será o nome do projeto? '; read ProjectName
echo 'Qual será a versão do python a ser usada (python3.6 ou Python3.7 ou outra pré-instalada)? '; read PythonVersion
mkdir -p $ProjectName/Aplication

#sudo apt-get install python3-pip #se não pip3 instalado no PC esse comando o instalará no sistema.
#sudo apt-get install python-pip #se não houver pip instalado no PC esse comando o instalará no sistema
#pip install -U pip #atualiza o pip
#pip install --upgrade pip #atualiza o pip

sudo pip3 install virtualenv #se não houver virtualenv instalada no PC esse comando a instalará no sistema
virtualenv --python='/usr/bin/$PythonVersion' $ProjectName  #[use o comando '$ which python3' para encontrar essa #localização e acrescente em --python='...'] <nome da pasta> #cria a #venv
source $ProjectName/bin/activate #ativa a venv
