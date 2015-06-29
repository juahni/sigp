from django.conf.urls import patterns, url
from django.contrib.auth.decorators import login_required

from . import views


urlpatterns = patterns('apps',
                       url(r'^$', login_required(views.IndexView.as_view()), name='index'),
                       url(r'^create/$', login_required(views.ProyectoCreate.as_view()), name='create'),
                       url(r'^update/(?P<pk>\d+)/$', login_required(views.ProyectoUpdate.as_view()), name='update'),
                       url(r'^delete/(?P<pk_proyecto>\d+)/$', 'proyectos.views.eliminar_proyecto', name='delete'),
                       url(r'^(?P<pk>\d+)/$', 'proyectos.views.proyecto_index', name='proyecto_index'),
                       url(r'^(?P<pk_proyecto>\d+)/equipo/add/$', login_required(views.AddMiembro.as_view()),
                           name='add_miembro'),
                       url(r'^(?P<pk_proyecto>\d+)/equipo/$', 'proyectos.views.listar_equipo', name='equipo_list'),
                       url(r'^(?P<pk_proyecto>\d+)/equipo/delete/(?P<pk_user>\d+)/$', 'proyectos.views.delete_miembro',
                           name='delete_miembro'),
                       url(r'^(?P<pk_proyecto>\d+)/equipo/rol/(?P<pk_user>\d+)/$',
                           login_required(views.RolMiembro.as_view()), name='rol_miembro'),
                       url(r'^(?P<pk_proyecto>\d+)/equipo/horas/(?P<pk_user>\d+)/$',
                           login_required(views.HorasDeveloper.as_view()), name='horas_developer'),
                       url(r'^reporte/$', 'proyectos.views.reporte_pdf', name='reporte'),
                       url(r'^reporte1/(?P<pk_proyecto>\d+)/$', 'proyectos.views.reporte1_pdf', name='reporte1'),
                       url(r'^reporte2/(?P<pk_proyecto>\d+)/$', 'proyectos.views.reporte2_pdf', name='reporte2'),
                       url(r'^reporte3/(?P<pk_proyecto>\d+)/$', 'proyectos.views.reporte3_pdf', name='reporte3'),
                       url(r'^reporte4/(?P<pk_proyecto>\d+)/$', 'proyectos.views.reporte4_pdf', name='reporte4'),
                       url(r'^reporte5/(?P<pk_proyecto>\d+)/$', 'proyectos.views.reporte5_pdf', name='reporte5'),
                       url(r'^reporte6/(?P<pk_proyecto>\d+)/$', 'proyectos.views.reporte6_pdf', name='reporte6'),
                       )
