from .base import *

DEBUG = True

TEMPLATE_DEBUG = True

ALLOWED_HOSTS = []

#bdsigp
DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.postgresql_psycopg2',
        'NAME': 'sigp_prueba',
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

MEDIA_URL = '/media/'

MEDIA_ROOT = BASE_DIR.child('media')
