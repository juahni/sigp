from .base import *

DEBUG = True
#PATH = '/var/production/sigp'

TEMPLATE_DEBUG = True

ALLOWED_HOSTS = []

#bdsigp
DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.postgresql_psycopg2',
        'NAME': 'sigp',
        'USER': 'juahni',
        'PASSWORD': 'postgres',
        'HOST': 'localhost',
        'PORT': '5432',
    }
}

STATIC_URL = '/static/'

STATICFILES_DIRS = (
    BASE_DIR.child('static'),
)
