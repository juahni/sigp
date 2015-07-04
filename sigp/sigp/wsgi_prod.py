"""
WSGI config for SIGP project.

It exposes the WSGI callable as a module-level variable named ``application``.

For more information on this file, see
https://docs.djangoproject.com/en/1.7/howto/deployment/wsgi/
"""

import os,sys

#path a donde esta el manage.py de nuestro proyecto Django
sys.path.append('/var/www/sigp/sigp/')

os.environ.setdefault("DJANGO_SETTINGS_MODULE", "sigp.settings.production")

#prevenimos UnicodeEncodeError
os.environ.setdefault("LANG", "en_US.UTF-8")
os.environ.setdefault("LC_ALL", "en_US.UTF-8")

#activamos nuestro virtualenv
activate_this = '/home/juahni/env/bin/activate_this.py'

execfile(activate_this, dict(__file__=activate_this))

from django.core.wsgi import get_wsgi_application
application = get_wsgi_application()