from django.conf.urls import patterns, include, url
from django.contrib import admin

urlpatterns = patterns('',
                       url(r'^admin/', include(admin.site.urls)),
                       url(r'^$', 'sigp.views.home', name='home'),

                       url(r'^login/$', 'sigp.views.custom_login', name='login'),
                       url(r'^logout/$', 'django.contrib.auth.views.logout', {'next_page': '/login/'}, name='logout'),

                       url(r'^reset/$', 'sigp.views.reset', name='reset'),
                       url(r'^reset/confirm/(?P<uidb64>[0-9A-Za-z]+)-(?P<token>.+)/$',
                           'sigp.views.reset_confirm', name='reset_confirm'),
                       url(r'^reset/done/$', 'sigp.views.reset_done', name='reset_done'),
                       url(r'^reset/complete/$', 'sigp.views.reset_complete', name='reset_complete'),

                       url(r'^perfil/$', 'sigp.views.user_profile', name='user_profile'),
                       url(r'^perfil/password_change/$', 'sigp.views.perfil_change_password',
                           name='profile_password_change'),

                       url(r'^usuarios/', include('apps.usuarios.urls', namespace="usuarios")),
                       url(r'^clientes/', include('apps.clientes.urls', namespace="clientes")),
                       url(r'^roles/', include('apps.roles.urls', namespace="roles")),
                       url(r'^roles_proyecto/', include('apps.roles_proyecto.urls', namespace="roles_proyecto")),
                       url(r'^proyectos/', include('apps.proyectos.urls', namespace="proyectos")),
                       url(r'^flujos/', include('apps.flujos.urls', namespace="flujos")),
                       url(r'^user_stories/', include('apps.user_stories.urls', namespace="user_stories")),
                       url(r'^sprints/', include('apps.sprints.urls', namespace="sprints")),
                       )
