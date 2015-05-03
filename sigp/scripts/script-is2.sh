#! /bin/bash
echo "***********Copiando el contenido de la base de datos de produccion***********"
echo "***********Ingrese el password del usuario user-prod***********"

# bdx es la base de datos que se va hacer el backup
pg_dump -c bdx -f /home/fran/is2/dumps/poblacion_prueba.sql -U fran -h localhost


echo "*************Eliminando la base de datos de produccion**************"
#dropdb bdx

echo "*****************Creando Usuario user-prod*****************"
echo "***********Ingrese el password del usuario postgres***********"
su postgres -c 'createuser -d -a user-prueba -U postgres'
echo "*****************Creando Base de datos gpsk-prod*****************"
echo "***********Ingrese el password del usuario postgres***********"
su postgres -c 'createdb sigp-prueba -O user-prueba -U postgres'
echo "***********Ingrese el password del usuario postgres***********"
su postgres -c 'psql -d sigp-prueba -a -f pass.sql -U postgres'

echo "*****************Poblando la base de datos de produccion*****************"
echo "***********Ingrese el password del usuario postgres***********"
su postgres -c "psql -q sigp-prueba < poblacion_prueba.sql"

echo "*****************Copiando el proyecto a produccion*****************"
#cuando ya esta todo el proyecto copiar a produccion
sudo cp -R /home/fran/a/sigp  /var/www/sigp/

echo "*****************Activando el entorno virtual*****************"
source /opt/env/bin/activate

echo "*****************Reiniciando apache*****************"
sudo /etc/init.d/apache2 restart




