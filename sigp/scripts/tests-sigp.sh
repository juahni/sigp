#! /bin/bash
echo "***********Test***********"
echo "*****************Activando el entorno virtual*****************"
source /home/romina/env/bin/activate

cd /home/romina/PycharmProjects/sigp/sigp
python manage.py test --settings=sigp.settings.local
