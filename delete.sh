#!/bin/bash

echo "Desfazendo e deletando tudo..."

# Remover usuários e seus diretórios home
echo "Removendo usuários e seus diretórios home..."
userdel -rf Carlos
userdel -rf Maria
userdel -rf Joao
userdel -rf debora
userdel -rf Sebastiana
userdel -rf Roberto
userdel -rf Josefina
userdel -rf Amanda
userdel -rf Rogerio

# Remover grupos
echo "Removendo grupos..."
groupdel GRP_ADM
groupdel GRP_VEN
groupdel GRP_SEC

# Remover diretórios e seus conteúdos
echo "Removendo diretórios e seus conteúdos..."
rm -rf /adm
rm -rf /ven
rm -rf /sec
rm -rf /publico

echo "Tudo desfeito e deletado!" 
