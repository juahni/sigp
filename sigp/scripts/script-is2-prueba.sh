#! /bin/bash
echo "***********Copiando el contenido de la base de datos de produccion***********"
echo "***********Ingrese el password del usuario de produccion***********"
# prueba es la base de datos que se va hacer el backup 
pg_dump -c sigp -f /home/juahni/PycharmProjects/sigp/sigp/dumps/poblacion_prueba.sql -U juahni -h localhost -p 5432


#echo "*************Eliminando la base de datos de produccion**************"
#dropdb sigp

echo "*****************Creando Base de datos sigp-prueba*****************"
echo "***********Ingrese el password del usuario de produccion***********"
createdb -h localhost -p 5432 -E UTF8 sigp-prueba -O sigp -U sigp

echo "**************Poblando la base de datos de produccion********************"
echo "**************Ingrese el password del usuario sigp***********************"
psql -U sigp -d sigp-prueba -p 5432 -h localhost < /home/juahni/PycharmProjects/sigp/sigp/dumps/poblacion_prueba.sql
echo "*****************Copiando el proyecto a produccion*****************"

#cuando ya esta todo el proyecto copiar a produccion
sudo cp -R /home/juahni/PycharmProjects/sigp  /var/www/sigp/

echo "*****************Activando el entorno virtual*****************"
source /home/juahni/env/bin/activate

echo "*****************Reiniciando apache*****************"
sudo /etc/init.d/apache2 restart




