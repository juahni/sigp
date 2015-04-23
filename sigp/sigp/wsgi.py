"""
WSGI config for SIGP project.

It exposes the WSGI callable as a module-level variable named ``application``.

For more information on this file, see
https://docs.djangoproject.com/en/1.7/howto/deployment/wsgi/
"""

import os
import sys
from sigp.sigp.settings import local
#os.environ.setdefault("DJANGO_SETTINGS_MODULE", "sigp.settings")
#ver entorno de produccion

sys.path.append('/home/fran/PycharmProyects/sigp')

if path not in sys.path:
    sys.path.append(path)


os.environ.setdefault("DJANGO_SETTINGS_MODULE", "sigp.settings.local")

from django.core.wsgi import get_wsgi_application
application = get_wsgi_application()
