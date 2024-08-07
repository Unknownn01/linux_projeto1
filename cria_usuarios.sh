echo"criando diretorios"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo"criando grupos"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "criando usuarios e definindo os grupos"

useradd Carlos -s /bin/bash -m -p$(openssl passwd -crypt 123) -G GRP_ADM
passwd -e Carlos
useradd Maria -s /bin/bash -m -p$(openssl passwd -crypt 123) -G GRP_ADM
passwd -e Maria
useradd Joao -s /bin/bash -m -p$(openssl passwd -crypt 123) -G GRP_ADM
passwd -e Joao

useradd debora -s /bin/bash -m -p$(openssl passwd -crypt 123) -G GRP_VEN
passwd -e debora
useradd Sebastiana -s /bin/bash -m -p$(openssl passwd -crypt 123) -G GRP_VEN
passwd -e Sebastiana
useradd Roberto -s /bin/bash -m -p$(openssl passwd -crypt 123) -G GRP_VEN
passwd -e Roberto

useradd Josefina -s /bin/bash -m -p$(openssl passwd -crypt 123) -G GRP_SEC
passwd -e Josefina
useradd Amanda -s /bin/bash -m -p$(openssl passwd -crypt 123) -G GRP_SEC
passwd -e Amanda
useradd Rogerio -s /bin/bash -m -p$(openssl passwd -crypt 123) -G GRP_SEC
passwd -e Rogerio

echo"definindo as permissoes e donos dos grupos"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico


echo"finalizado"
