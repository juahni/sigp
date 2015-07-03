#! /bin/bash
echo "***********Test***********"
echo "*****************Activando el entorno virtual*****************"
source /home/juahni/env/bin/activate

cd /home/juahni/PycharmProjects/is2/sigp
python manage.py test --settings=sigp.settings.local
