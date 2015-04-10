__author__ = 'juahni'

from django.conf.urls import patterns, url
from proyectos import views
from django.contrib.auth.decorators import login_required

urlpatterns = patterns('',
    url(r'^$', login_required(views.IndexView.as_view()), name='lista_proyecto'),
    url(r'^crear$', login_required(views.CreateProyecto.as_view()), name='crear_proyecto'), #new line
    url(r'^borrar/(?P<pk>\d+)$', login_required(views.DeleteProyecto.as_view()), name='borrar_proyecto'),
    url(r'^modificar/(?P<pk>\d+)$', login_required(views.UpdateProyecto.as_view()), name='modificar_proyecto'),
    url(r'^buscar/$', views.search, name='buscar_proyecto'),
)
