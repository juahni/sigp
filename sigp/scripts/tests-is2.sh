#! /bin/bash
echo "***********Test***********"
echo "*****************Activando el entorno virtual*****************"
source /opt/env/bin/activate

cd /home/juahni/PycharmProjects/sigp/sigp
python manage.py test --settings=sigp.settings.local
