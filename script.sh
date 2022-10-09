#!/bin/bash

echo "=== Criando diretórios ==="

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "=== Criando grupos de usuários ==="

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "=== Criando usuários ==="

#criacao dos usuarios com suas respectivas senhas e grupos
useradd Adm1 -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd Adm2 -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd Adm3 -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM

useradd Ven1 -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd Ven2 -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd Ven3 -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN

useradd Sec1 -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd Sec2 -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd Sec3 -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC

echo "=== Especificando permissões dos diretórios ==="

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

#permissoes total para o respectivo dono e grupo
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "FIM!!!"
