#! /bin/bash
echo "***********Test***********"
echo "*****************Activando el entorno virtual*****************"
source /opt/env/bin/activate

cd /home/fran/PycharmProjects/is2/sigp
python manage.py test --settings=sigp.settings.local
