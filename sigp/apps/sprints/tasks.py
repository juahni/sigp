from __future__ import absolute_import
import datetime

from celery import shared_task
from django.conf import settings
from django.core.mail import send_mail


from apps.proyectos.models import Proyecto
from apps.user_stories.models import UserStory


@shared_task
def cambio_estado(proyecto, sprint, user_story, flujo, uri):
    """
    Funcion que envia la notificacion al scrum master sobre el cambio de estado del user story
    dentro del flujo del kanban.

    @type proyecto: String
    @param proyecto: Nombre del proyecto actual

    @type sprint: String
    @param sprint: Nombre del spring actual

    @type user_story: String
    @param user_story: Nombre del user story actual

    @type flujo: string
    @param flujo: Nombre del flujo actual

    @type uri: string
    @param uri: uri de la lista de registro de tareas del user story

    @rtype: String
    @return: Imprime los datos del email de notificacion
    """
    proy = Proyecto.objects.get(nombre_corto=proyecto)
    scrum_master = proy.scrum_master
    email_scrum = scrum_master.email

    #email_scrum_master = str(email_scrum)
    html = 'User story: <strong>%s</strong>' \
           '<ul>' \
           '<li>Proyecto: <strong>%s</strong></li>' \
           '<li>Sprint <strong>%s</strong></li>' \
           '<li>Flujo <strong>%s</strong></li>' \
           '</ul>' \
           'Enlace: %s' \
           '<br/>' % (user_story, proyecto, sprint, flujo, uri)
    send_mail('Notificacion cambio de estado en user story: %s - %s' % (user_story,
                                                                        datetime.datetime.now().strftime('%d-%m-%Y %H:%M:%S')),
              'Cambio de estado:',
              'sigp.soporte@gmail.com', [email_scrum], fail_silently=False, html_message=html)
    #print proyecto

    return 'Cambio de estado: Proyecto %s - Sprint %s -- User story %s - ' \
           'Flujo %s. email %s' % (proyecto, sprint, user_story, flujo, email_scrum)


@shared_task
def fin_user_story(proyecto, sprint, user_story, flujo, uri):
    """
    Funcion que envia la notificacion al scrum master sobre la finalizacion del user story
    dentro del flujo del kanban.

    @type proyecto: String
    @param proyecto: Nombre del proyecto actual

    @type sprint: String
    @param sprint: Nombre del spring actual

    @type user_story: String
    @param user_story: Nombre del user story actual

    @type flujo: string
    @param flujo: Nombre del flujo actual

    @type uri: string
    @param uri: uri de la lista de registro de tareas del user story

    @rtype: String
    @return: Imprime los datos del email de notificacion
    """
    proy = Proyecto.objects.get(nombre_corto=proyecto)
    scrum_master = proy.scrum_master
    email_scrum = scrum_master.email
    #email_scrum_master = str(email_scrum)
    html = 'User story: <strong>%s</strong>' \
           '<ul>' \
           '<li>Proyecto: <strong>%s</strong></li>' \
           '<li>Sprint <strong>%s</strong></li>' \
           '<li>Flujo <strong>%s</strong></li>' \
           '</ul>' \
           'Enlace: %s' \
           '<br/>' % (user_story, proyecto, sprint, flujo, uri)
    send_mail('Notificacion finalizacion de user story: %s - %s' % (user_story,
                                                                    datetime.datetime.now().strftime('%d-%m-%Y %H:%M:%S')),
              'Finalizacion de user story:',
              'sigp.soporte@gmail.com', [email_scrum], fail_silently=False, html_message=html)

    return 'User story finalizado: Proyecto %s - Sprint %s -- User story %s - ' \
           'Flujo %s.' % (proyecto, sprint, user_story, flujo)


@shared_task
def reversion_estado(proyecto, sprint, user_story, flujo, uri):
    """
    Funcion que envia la notificacion al desarrollador sobre la reversion de estado del user story
    dentro del flujo del kanban.

    @type proyecto: String
    @param proyecto: Nombre del proyecto actual

    @type sprint: String
    @param sprint: Nombre del spring actual

    @type user_story: String
    @param user_story: Nombre del user story actual

    @type flujo: string
    @param flujo: Nombre del flujo actual

    @type uri: string
    @param uri: uri de la lista de registro de tareas del user story

    @rtype: String
    @return: Imprime los datos del email de notificacion
    """
    us = UserStory.objects.get(nombre=user_story)
    developer = us.usuario
    email_dev = developer.email
    #scrum_master = proy.scrum_master
    #email_scrum = scrum_master.email
    #email_scrum_master = str(email_scrum)
    html = 'User story: <strong>%s</strong>' \
           '<ul>' \
           '<li>Proyecto: <strong>%s</strong></li>' \
           '<li>Sprint <strong>%s</strong></li>' \
           '<li>Flujo <strong>%s</strong></li>' \
           '</ul>' \
           'Enlace: %s' \
           '<br/>' % (user_story, proyecto, sprint, flujo, uri)
    send_mail('Notificacion revertir estado de user story: %s - %s' % (user_story,
                                                                       datetime.datetime.now().strftime('%d-%m-%Y %H:%M:%S')),
              'Revertir estado de user story:',
              'sigp.soporte@gmail.com', [email_dev], fail_silently=False, html_message=html)

    return 'Revertir estado: Proyecto %s - Sprint %s -- User story %s - ' \
           'Flujo %s.' % (proyecto, sprint, user_story, flujo)


@shared_task
def aprobacion_user_story(proyecto, sprint, user_story, flujo, uri):
    """
    Funcion que envia la notificacion al desarrollador sobre la aprobacion del user story
    dentro del flujo del kanban.

    @type proyecto: String
    @param proyecto: Nombre del proyecto actual

    @type sprint: String
    @param sprint: Nombre del spring actual

    @type user_story: String
    @param user_story: Nombre del user story actual

    @type flujo: string
    @param flujo: Nombre del flujo actual

    @type uri: string
    @param uri: uri de la lista de registro de tareas del user story

    @rtype: String
    @return: Imprime los datos del email de notificacion
    """
    us = UserStory.objects.get(nombre=user_story)
    developer = us.usuario
    email_dev = developer.email
    #scrum_master = proy.scrum_master
    #email_scrum = scrum_master.email
    #email_scrum_master = str(email_scrum)
    html = 'User story: <strong>%s</strong>' \
           '<ul>' \
           '<li>Proyecto: <strong>%s</strong></li>' \
           '<li>Sprint <strong>%s</strong></li>' \
           '<li>Flujo <strong>%s</strong></li>' \
           '</ul>' \
           'Enlace: %s' \
           '<br/>' % (user_story, proyecto, sprint, flujo, uri)
    send_mail('Notificacion aprobacion de user story: %s - %s' % (user_story,
                                                                  datetime.datetime.now().strftime('%d-%m-%Y %H:%M:%S')),
              'Aprobacion de user story:',
              'sigp.soporte@gmail.com', [email_dev], fail_silently=False, html_message=html)

    return 'User story aprobado: Proyecto %s - Sprint %s -- User story %s - ' \
           'Flujo %s.' % (proyecto, sprint, user_story, flujo)