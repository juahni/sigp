from django.conf.urls import patterns, include, url
from django.contrib import admin

urlpatterns = patterns('',
                       url(r'^admin/', include(admin.site.urls)),
                       url(r'^$', 'sigp.views.home', name='home'),
                       url(r'^login/$', 'sigp.views.custom_login', name='login'),
                       url(r'^logout/$', 'django.contrib.auth.views.logout', {'next_page':'/login/'}, name='logout'),
                       url(r'^usuarios/', include('apps.usuarios.urls', namespace="usuarios")),
                       )
