from .base import *

DEBUG = True
PATH = '/var/production/sigp'

TEMPLATE_DEBUG = True

ALLOWED_HOSTS = []

#bdsigp
DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.postgresql_psycopg2',
        'NAME': 'prueba',
        'USER': 'romina',
        'PASSWORD': '1q2w3e4r5t',
        'HOST': 'localhost',
        'PORT': '5432',
    }
}

STATIC_URL = '/static/'

STATICFILES_DIRS = (
    BASE_DIR.child('static'),
)
