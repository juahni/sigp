#! /bin/bash
echo "************************NOTIFICACION SIGP*********************"
echo "*****************Activando el entorno virtual*****************"
source /home/juahni/env/bin/activate

cd /home/juahni/PycharmProjects/sigp/sigp
python manage.py migrate djcelery
python manage.py syncdb
celery -A sigp worker -l info
