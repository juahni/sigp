#! /bin/bash
echo "************************NOTIFICACION SIGP*********************"
echo "*****************Activando el entorno virtual*****************"
source /opt/env/bin/activate

cd /home/fran/PycharmProjects/is2/sigp
python manage.py migrate djcelery
python manage.py syncdb
celery -A sigp worker -l info