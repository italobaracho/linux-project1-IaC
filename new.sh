#!/bin/bash

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários..."

-G GRP_ADM

useradd carlos -m -s /bin/bash -p $(openssl passwd -1 123)
useradd maria -m -s /bin/bash -p $(openssl passwd -1 123)
useradd joao -m -s /bin/bash -p $(openssl passwd -1 123)

-G GGRP_VEN

useradd debora -m -s /bin/bash -p $(openssl passwd -1 123)
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -1 123)
useradd roberto -m -s /bin/bash -p $(openssl passwd -1 123)

-G GRP_SEC

useradd josefina -m -s /bin/bash -p $(openssl passwd -1 123)
useradd amanda -m -s /bin/bash -p $(openssl passwd -1 123)
useradd rogerio -m -s /bin/bash -p $(openssl passwd -1 123)

echo "Especificando permissões dos diretórios..."

chmod root:GRP_ADM /adm
chmod root:GRP_VEN /ven
chmod root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico


echo "Fim.." 
