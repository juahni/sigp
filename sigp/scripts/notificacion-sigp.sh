#! /bin/bash
echo "************************NOTIFICACION SIGP*********************"
echo "*****************Activando el entorno virtual*****************"
source /home/romina/env/bin/activate

cd /home/romina/PycharmProjects/sigp/sigp
python manage.py migrate djcelery
python manage.py syncdb
celery -A sigp worker -l info
