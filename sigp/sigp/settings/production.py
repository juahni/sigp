from base import *

DEBUG = False

TEMPLATE_DEBUG = True

ALLOWED_HOSTS = ['*']

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.postgresql_psycopg2',
        'NAME': 'sigp-prod',
        'USER': 'sigp',
        'PASSWORD': 'sigp',
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