#! /bin/bash
echo "***********Copiando el contenido de la base de datos de produccion***********"
echo "***********Ingrese el password del usuario anterior***********"
# sigp es la base de datos sobre el cual se realiza el backup
pg_dump -c bdproduccion -U sigp -h localhost -p 5432 > /home/fran/PycharmProjects/is2/sigp/dumps/poblacion_prueba.sql
pg_dump -c bdproduccion -U sigp -h localhost -p 5432 > /home/fran/PycharmProjects/is2/sigp/dumps/poblacion_produccion.sql

#echo "*************Eliminando la base de datos de produccion**************"
#dropdb sigp

echo "*****************Creando Base de datos sigp-produccion*****************"
echo "***********Ingrese el password del usuario sigp***********"
createdb -h localhost -p 5432 -E UTF8 sigp-prod -O sigp -U sigp

echo "**************Poblando la base de datos de produccion********************"
echo "**************Ingrese el password del usuario sigp***********************"
psql -U sigp -d sigp-prod -p 5432 -h localhost < /home/fran/PycharmProjects/is2/sigp/dumps/poblacion_produccion.sql


echo "*****************Creando Base de datos sigp-capacitacion*****************"
echo "***********Ingrese el password del usuario sigp***********"
createdb -h localhost -p 5432 -E UTF8 sigp-prueba -O sigp -U sigp

echo "**************Poblando la base de datos de capacitacion********************"
echo "**************Ingrese el password del usuario sigp***********************"
psql -U sigp -d sigp-prueba -p 5432 -h localhost < /home/fran/PycharmProjects/is2/sigp/dumps/poblacion_prueba.sql



#cuando ya esta todo el proyecto copiar a produccion
echo "**************Eliminando el proyecto en produccion********************"
sudo rm -rf /var/www/is2/

echo "**************Copiando el proyecto actualizado a produccion************"
sudo cp -R /home/fran/PycharmProjects/is2  /var/www/is2/
sudo chmod -R 777 /var/www/is2

echo "**************Activando el Sitio de Produccion sigp************"
sudo a2ensite sigp


echo "*****************Activando el entorno virtual*****************"
source /opt/env/bin/activate

echo "*****************Reiniciando Apache*****************"
sudo /etc/init.d/apache2 restart



