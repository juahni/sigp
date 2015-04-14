from django.conf.urls import patterns, include, url
from django.contrib import admin

urlpatterns = patterns('',
                       url(r'^admin/', include(admin.site.urls)),
                       url(r'^$', 'sigp.views.home', name='home'),
                       url(r'^login/$', 'sigp.views.custom_login', name='login'),
                       url(r'^logout/$', 'django.contrib.auth.views.logout', {'next_page':'/login/'}, name='logout'),

                       url(r'^perfil/$', 'sigp.views.user_profile', name='user_profile'),
                       url(r'^perfil/password_change/$', 'sigp.views.perfil_change_password',
                           name='profile_password_change'),

                       url(r'^usuarios/', include('apps.usuarios.urls', namespace="usuarios")),

                       url(r'^proyectos/', include('apps.proyectos.urls', namespace="proyectos")),

                       url(r'^clientes/', include('apps.clientes.urls', namespace="clientes")),
                       )
