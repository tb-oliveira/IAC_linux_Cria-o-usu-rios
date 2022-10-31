#!/bin/bash


echo "criando diretórios..."

mkdir /publico
echo "criado diretório /publico"

mkdir /adm
echo "criado diretório /adm"

mkdir /ven
echo "criado diretório /ven"

mkdir /sec
echo "criado diretório /sec"


echo "Criando grupos de usuários..."

groupadd GRP_ADM
echo "criado grupo GRP_ADM"

groupadd GRP_VEN
echo "criado grupo GRP_VEN"

groupadd GRP_SEC
echo "criado grupo GRP_SEC"


echo "Criando usuários..."

useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt Senha 123) G GRP_ADM
echo "criado usuário carlos com senha inicial padrão"

useradd maria -m -s /bin/bash -p $(openssl passwd -crypt Senha 123) -G GRP_ADM
echo "criado usuário maria com senha inicial padrão"

useradd joao -m -s /bin/bash -p $(openssl passwd -crypt Senha 123) -G GRP_ADM
echo "criado usuário joao com senha inicial padrão"

useradd debora -m -s /bin/bash -p $(openssl passwd -crypt Senha 123) -G GRP_VEN
echo "criado usuário debora com senha inicial padrão"

useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt Senha 123) -G GRP_VEN
echo "criado usuário sebastiana com senha inicial padrão"

useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt Senha 123) -G GRP_VEN
echo "criado usuário roberto com senha inicial padrão"

useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt Senha 123) -G GRP_SEC
echo "criado usuário josefina com senha inicial padrão"

useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt Senha 123) -G GRP_SEC
echo "criado usuário amanda com senha inicial padrão"

useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt Senha 123) -G GRP_SEC
echo "criado usuário rogerio com senha inicial padrão"


echo "Especificando permissões dos diretórios..."

chown root:GRP_ADM /adm
echo "Dono do diretório /adm ajustado para root"

chown root:GRP_VEN /ven
echo "Dono do diretório /ven ajustado para root"

chown root:GRP_ADM /sec
echo "Dono do diretório /sec ajustado para root"

chmod 770 /adm
echo "Permissões do diretório /adm ajustadas"

chmod 770 /ven
echo "Permissões do diretório /ven ajustadas"

chmod 770 /sec
echo "Permissões do diretório /sec ajustadas"

chmod 777 /publico
echo "Permissões do diretório /publico ajustadas"


echo "Finalização do IAC"

