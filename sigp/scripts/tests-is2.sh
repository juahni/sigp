#! /bin/bash
echo "***********Test***********"
echo "*****************Activando el entorno virtual*****************"
source /opt/env/bin/activate

cd /home/fran/a/sigp
python manage.py test --settings=sigp.settings.local
