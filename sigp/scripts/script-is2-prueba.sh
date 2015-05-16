#! /bin/bash
echo "***********Copiando el contenido de la base de datos de produccion***********"
echo "***********Ingrese el password del usuario anterior***********"
# sigp es la base de datos sobre el cual se realiza el backup
pg_dump -c sigp -f /home/juahni/PycharmProjects/sigp/sigp/dumps/poblacion_prueba.sql -U juahni -h localhost -p 5432
pg_dump -c sigp -f /home/juahni/PycharmProjects/sigp/sigp/dumps/poblacion_produccion.sql -U juahni -h localhost -p 5432

#echo "*************Eliminando la base de datos de produccion**************"
#dropdb sigp

echo "*****************Creando Base de datos sigp-produccion*****************"
echo "***********Ingrese el password del usuario sigp***********"
createdb -h localhost -p 5432 -E UTF8 sigp-prod -O sigp -U sigp

echo "**************Poblando la base de datos de produccion********************"
echo "**************Ingrese el password del usuario sigp***********************"
psql -U sigp -d sigp-prueba -p 5432 -h localhost < /home/juahni/PycharmProjects/sigp/sigp/dumps/poblacion_produccion.sql


echo "*****************Creando Base de datos sigp-capacitacion*****************"
echo "***********Ingrese el password del usuario sigp***********"
createdb -h localhost -p 5432 -E UTF8 sigp-prueba -O sigp -U sigp

echo "**************Poblando la base de datos de capacitacion********************"
echo "**************Ingrese el password del usuario sigp***********************"
psql -U sigp -d sigp-prueba -p 5432 -h localhost < /home/juahni/PycharmProjects/sigp/sigp/dumps/poblacion_prueba.sql



#cuando ya esta todo el proyecto copiar a produccion
echo "**************Eliminando el proyecto en produccion********************"
sudo rm -rf /var/www/sigp/

echo "**************Copiando el proyecto descargado a produccion************"
sudo cp -R /home/juahni/PycharmProjects/sigp  /var/www/sigp/
sudo chmod -R 777 /var/www/sigp

echo "**************Activa el Sitio de Produccion sigp************"
sudo a2ensite sigp


echo "*****************Activando el entorno virtual*****************"
source /home/juahni/env/bin/activate

echo "*****************Reiniciando apache*****************"
sudo /etc/init.d/apache2 restart




