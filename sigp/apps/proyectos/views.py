# from datetime import datetime
from django.shortcuts import render, get_object_or_404
from django.views import generic
from django.views.generic.edit import CreateView, UpdateView
from django.core.urlresolvers import reverse
from django.contrib.auth.models import User, Group
from django.http import HttpResponseRedirect
from django.contrib.auth.decorators import login_required
from django.contrib.messages.views import SuccessMessageMixin
from django.contrib import messages
from django.contrib.auth.decorators import permission_required
from django.utils.decorators import method_decorator

from models import Proyecto
from apps.roles_proyecto.models import RolProyecto_Proyecto
from apps.user_stories.models import UserStory, Tarea
from apps.sprints.models import Sprint
from apps.flujos.models import Flujo

from forms import AddMiembroForm, ProyectoCreateForm, ProyectoUpdateForm, RolMiembroForm, HorasDeveloperForm

from reportlab.platypus import SimpleDocTemplate, Paragraph, TableStyle
from reportlab.lib.styles import getSampleStyleSheet
from reportlab.lib import colors
from reportlab.lib.pagesizes import letter
from reportlab.platypus import Table
from reportlab.platypus import Spacer
from reportlab.lib.pagesizes import A4
from reportlab.pdfgen import canvas
from django.http import HttpResponse
from io import BytesIO
from django.shortcuts import render_to_response

from datetime import datetime
#import datetime

class IndexView(generic.ListView):
    """
    Clase que despliega la lista completa de proyectos en el Index
    de la aplicacion Proyecto.

    @ivar queryset: Consulta a la base de datos
    @type queryset: django.db.models.query

    @ivar template_name: Nombre del template a utilizar en la vista
    @type template_name: string
    """
    queryset = Proyecto.objects.all().order_by('codigo')
    template_name = 'proyectos/index.html'


class ProyectoCreate(SuccessMessageMixin, CreateView):
    """
    Clase que despliega el formulario para la creacion de proyectos.

    @ivar form_class: Formulario que se utiliza para la creacion de usuarios
    @type form_class: django.forms

    @ivar template_name: Nombre del template a utilizar en la vista
    @type template_name: string
    """
    form_class = ProyectoCreateForm
    template_name = 'proyectos/create.html'
    success_message = "%(nombre_corto)s fue creado de manera exitosa"

    def form_valid(self, form):
        return super(ProyectoCreate, self).form_valid(form)

    def get_success_url(self):
        return reverse('proyectos:index')

    @method_decorator(permission_required('proyectos.crear_proyecto'))
    def dispatch(self, *args, **kwargs):
        return super(ProyectoCreate, self).dispatch(*args, **kwargs)


class ProyectoUpdate(SuccessMessageMixin, UpdateView):
    """
    Clase que despliega el formulario para la modficacion de proyectos.

    @ivar form_class: Formulario que se utiliza para la modficacion de usuarios
    @type form_class: django.forms

    @ivar template_name: Nombre del template a utilizar en la vista
    @type template_name: string
    """
    form_class = ProyectoUpdateForm
    template_name = 'proyectos/update.html'
    success_message = "%(nombre_corto)s ha siso modificado"

    def get_object(self, queryset=None):
        obj = Proyecto.objects.get(pk=self.kwargs['pk'])
        return obj

    def get_success_url(self):
        return reverse('proyectos:index')

    @method_decorator(permission_required('proyectos.modificar_proyecto'))
    def dispatch(self, *args, **kwargs):
        return super(ProyectoUpdate, self).dispatch(*args, **kwargs)


@login_required(login_url='/login/')
@permission_required('proyectos.eliminar_proyecto')
def eliminar_proyecto(request, pk_proyecto):
    """
    Elimina proyecto
    @param request: Proyecto
    @param pk_proyecto: clave primaria de proyecto
    @return: template con texto renderizado
    """
    if request.method == 'POST':
        proyecto_detail = get_object_or_404(Proyecto, pk=pk_proyecto)
        proyecto_detail.cancelado = True
        proyecto_detail.save()

        messages.success(request, 'El proyecto fue cancelado con exito.')

        return HttpResponseRedirect('/proyectos/')

    proyecto_detail = get_object_or_404(Proyecto, pk=pk_proyecto)

    return render(request, 'proyectos/delete.html', locals())


@login_required(login_url='/login/')
def proyecto_index(request, pk):
    """
    Redirige al index de Proyecto
    @param request: Proyecto
    @param pk_proyecto: clave primaria de proyecto
    @return: template con texto renderizado
    """
    proyecto = Proyecto.objects.get(pk=pk)
    template = 'proyectos/proyecto_index.html'

    lista_equipo = Proyecto.objects.get(pk=pk).equipo.all()
    #print lista_equipo

    nueva_lista = []
    for u in lista_equipo:
        usu = RolProyecto_Proyecto.objects.filter(proyecto=proyecto, user=u)
        #print usu
        nueva_lista.append(usu)

    #print nueva_lista

    #duracion_proyecto = proyecto.fecha_fin - proyecto.fecha_inicio
    #print "duracion = %s" % duracion_proyecto.days
    #duracion = duracion_proyecto.days

    duracion = habiles(proyecto.fecha_inicio, proyecto.fecha_fin)

    lista_us = UserStory.objects.filter(proyecto=pk).order_by('nombre')[:5]
    lista_sprints = Sprint.objects.filter(proyecto=pk).order_by('pk')
    lista_flujos = Flujo.objects.filter(proyecto=pk).order_by('pk')

    return render(request, template, locals())


@login_required(login_url='/login/')
@permission_required('proyectos.asignar_rol_proyecto_proyecto')
def listar_equipo(request, pk_proyecto):
    """
    Lista equipo del proyecto
    @param request: Proyecto
    @param pk_proyecto: clave primaria de proyecto
    @return: template con texto renderizado
    """
    proyecto = Proyecto.objects.get(pk=pk_proyecto)
    lista_equipo = Proyecto.objects.get(pk=pk_proyecto).equipo.all().order_by('id')
    #print lista_equipo

    duracion = habiles(proyecto.fecha_inicio, proyecto.fecha_fin)

    nueva_lista = []
    for u in lista_equipo:
        usu = RolProyecto_Proyecto.objects.filter(proyecto=proyecto, user=u)
        #print usu
        nueva_lista.append(usu)

    miembros = RolProyecto_Proyecto.objects.filter(proyecto=proyecto)
    horas_hombre_totales = 0
    for miembro in miembros:
        horas_developer_proyecto = 0
        horas_developer_proyecto = miembro.horas_developer * duracion
        horas_hombre_totales = horas_hombre_totales + horas_developer_proyecto

    #print nueva_lista
    template = 'proyectos/proyecto_equipo_list.html'
    return render(request, template, locals())


class AddMiembro(generic.UpdateView):
    """
    Clase que despliega el formulario para la agregacion de miembros.

    @ivar form_class: Formulario que se utiliza para la agregacion de usuarios
    @type form_class: django.forms

    @ivar template_name: Nombre del template a utilizar en la vista
    @type template_name: string
    """
    form_class = AddMiembroForm
    template_name = 'proyectos/proyecto_equipo_add_miembro.html'
    context_object_name = 'proyecto_detail'

    def get_object(self, queryset=None):
        obj = Proyecto.objects.get(pk=self.kwargs['pk_proyecto'])
        return obj

    def get_success_url(self):
        obj = Proyecto.objects.get(pk=self.kwargs['pk_proyecto'])
        return reverse('proyectos:equipo_list', args=[obj.pk])

    @method_decorator(permission_required('proyectos.asignar_rol_proyecto_proyecto'))
    def dispatch(self, *args, **kwargs):
        return super(AddMiembro, self).dispatch(*args, **kwargs)


@login_required(login_url='/login/')
@permission_required('proyectos.asignar_rol_proyecto_proyecto')
def delete_miembro(request, pk_proyecto, pk_user):
    """
    Elimina miembro del equipo del proyecto
    @param request: Proyecto
    @param pk_proyecto: clave primaria de proyecto
    @param pk_user: clave primaria de usuario
    @return: template con texto renderizado
    """
    template = 'proyectos/proyecto_equipo_delete_miembro.html'
    proyecto = get_object_or_404(Proyecto, pk=pk_proyecto)
    usuario = get_object_or_404(User, pk=pk_user)
    if request.method == 'POST':

        sm = proyecto.scrum_master.pk

        if sm != usuario.pk:
            proyecto.equipo.remove(usuario)
            lista_roles = RolProyecto_Proyecto.objects.filter(user=usuario, proyecto=proyecto)
            for rol in lista_roles:
                rol.delete()
            return HttpResponseRedirect(reverse('proyectos:equipo_list', args=[proyecto.pk]))

        else:
            mensaje = 'No se puede eliminar el usuario '
            mensaje = mensaje + usuario.username + ' del proyecto porque es el Scrum Master. Designe primero como Scrum Master a otro usuario.'
            return render(request, template, locals())

    return render(request, template, locals())


class RolMiembro(UpdateView):
    """
    Clase que despliega el template para la especificar los roles de los miembros.

    @ivar form_class: Formulario que se utiliza para la agregacion roles para el usuario
    @type form_class: django.forms

    @ivar template_name: Nombre del template a utilizar en la vista
    @type template_name: string
    """
    form_class = RolMiembroForm
    template_name = 'proyectos/proyecto_equipo_rol_miembro.html'
    context_object_name = 'proyecto_detail'

    def get_initial(self):
        initial = super(RolMiembro, self).get_initial()
        user = User.objects.get(pk=self.kwargs['pk_user'])
        proyecto = Proyecto.objects.get(pk=self.kwargs['pk_proyecto'])
        solo_del_usuario = RolProyecto_Proyecto.objects.filter(user=user, proyecto=proyecto)
        #print "solo_del_usuario = %s" % solo_del_usuario
        roles_proyecto_del_usuario = solo_del_usuario.values('rol_proyecto').distinct()
        #print "roles_proyecto_del_usuario = %s" % roles_proyecto_del_usuario
        roro = Group.objects.filter(rolproyecto__pk__in=roles_proyecto_del_usuario)

        #print "roro = %s" % roro

        initial['rolproyecto'] = roro

        initial['user'] = user
        #print "user = %s" % user

        return initial

    def get_object(self, queryset=None):
        obj = Proyecto.objects.get(pk=self.kwargs['pk_proyecto'])
        return obj

    def get_success_url(self):
        obj = Proyecto.objects.get(pk=self.kwargs['pk_proyecto'])
        return reverse('proyectos:equipo_list', args=[obj.pk])

    @method_decorator(permission_required('proyectos.asignar_rol_proyecto_proyecto'))
    def dispatch(self, *args, **kwargs):
        return super(RolMiembro, self).dispatch(*args, **kwargs)


class HorasDeveloper(UpdateView):
    """
    Clase que despliega el formulario para la modficacion de las horas asignadas a un desarrollador.

    @ivar form_class: Formulario que se utiliza para la asignacion de horas
    @type form_class: django.forms

    @ivar template_name: Nombre del template a utilizar en la vista
    @type template_name: string
    """
    form_class = HorasDeveloperForm
    template_name = 'proyectos/proyecto_equipo_horas_developer.html'
    context_object_name = 'proyecto_detail'

    def get_initial(self):
        """
        Metodo que retorna datos iniciales a ser utilizados en el formulario
        @return:
        """
        initial = super(HorasDeveloper, self).get_initial()
        user = User.objects.get(pk=self.kwargs['pk_user'])
        proyecto = Proyecto.objects.get(pk=self.kwargs['pk_proyecto'])
        solo_del_usuario = RolProyecto_Proyecto.objects.filter(user=user, proyecto=proyecto)
        #print "solo_del_usuario = %s" % solo_del_usuario
        rol_developer = []
        for rol in solo_del_usuario:
            if rol.rol_proyecto.group.name == "Developer":
                rol_developer.append(rol)

        #print "rol_developer = %s" % rol_developer

        horas = rol_developer[0].horas_developer
        #print "rol_developer = %s" % rol_developer

        initial['horas_developer'] = horas
        initial['rol_developer'] = rol_developer
        initial['user'] = user
        #print "user = %s" % user

        return initial

    def get_object(self, queryset=None):
        """
        Metodo que retorna el proyecto actual
        @param queryset:
        @return:
        """
        obj = Proyecto.objects.get(pk=self.kwargs['pk_proyecto'])
        return obj

    def get_success_url(self):
        """
        Metodo que realiza la redireccion si la modificacion de horas es exitosa
        @return:
        """
        obj = Proyecto.objects.get(pk=self.kwargs['pk_proyecto'])
        return reverse('proyectos:equipo_list', args=[obj.pk])

    def get_context_data(self, **kwargs):
        """
        Metodo que retorna datos a utilizar en el template de la vista
        @param kwargs:
        @return:
        """
        context = super(HorasDeveloper, self).get_context_data(**kwargs)
        proyecto = get_object_or_404(Proyecto, pk=self.kwargs['pk_proyecto'])
        #duracion_proyecto = proyecto.fecha_fin - proyecto.fecha_inicio
        duracion_proyecto = habiles(proyecto.fecha_inicio, proyecto.fecha_fin)
        #duracion_horas = duracion_proyecto * 8
        #print "duracion = %s" % duracion_horas

        context['duracion_proyecto'] = duracion_proyecto
        #context['duracion_horas'] = duracion_horas

        rows_del_proyecto = RolProyecto_Proyecto.objects.filter(proyecto=proyecto)
        #print "rows_del_proyecto = %s" % rows_del_proyecto

        horas_asignadas = 0
        for row in rows_del_proyecto:
            horas_asignadas = horas_asignadas + row.horas_developer

        context['horas_asignadas'] = horas_asignadas

        return context

    @method_decorator(permission_required('proyectos.asignar_rol_proyecto_proyecto'))
    def dispatch(self, *args, **kwargs):
        return super(HorasDeveloper, self).dispatch(*args, **kwargs)


#Recibe dos fechas y calcula cuantos dias habiles hay entre las mismas,
#incluyendo la fecha de inicio
def habiles(fecha1, fecha2):
    time1 = int(str(datetime.weekday(fecha1)))
    time2 = int(str(datetime.weekday(fecha2)))
    dia = time1 - time2
    diferencia = fecha2 - fecha1
    valor = int(str(diferencia.days))

    if valor >= 7:
        val = ((valor + dia) // 7) * 2
        habiles = valor - val + 1

        if time1 > 4 or time2 > 4:
            if time2 > time1:
                if time2 == 5:
                    habiles = habiles - 1
                else:
                    if time2 == 6:
                        habiles = habiles - 2
            else:
                if (time1 > time2 and time1 == 6) and time2 != 5:
                    habiles = habiles + 1
                else:
                    if time1 == time2:
                        habiles = habiles - 1
    else:
        if (time1 + valor) > 5:
            habiles = valor - 1
        else:
            if (time1 + valor) == 5:
                habiles = valor
            else:
                habiles = valor + 1

    return habiles


def reporte_pdf(reques, pk):
    #user = User.objects.get(username=request.user.username)
    #usuarioPorProyecto = RolProyecto_Proyecto.objects.filter(id=user.id)
    #


    #proys = []
    #for rec in usuarioPorProyecto:
    #     if not rec.proyecto in proys:
    #        proys.append(pk)
    #lista = Proyecto.objects.filter(id__in=proys).order_by('id')
    #lista = Proyecto.objects.get(pk=self.kwargs['pk'])
    lista = Proyecto.objects.get(pk=pk)
    #template = 'proyectos/reportes.html'
    #return render(request, template, locals())
    #print lista

    return render_to_response("proyectos/reportes.html", {'i': lista,
    })


def reporte1_pdf(request, pk_proyecto):
    """
    Metodo para generar el reporte 1 del proyecto
    :param request: contiene la informacion de la pagina que lo llamo
    :param proyecto_id: id del proyecto del cual se generara el reporte
    :return: reporte en pdf
    """
    proyecto_actual = Proyecto.objects.get(id=pk_proyecto)
    uh = UserStory.objects.filter(proyecto=proyecto_actual)

    estiloHoja = getSampleStyleSheet()
    style = [
        ('GRID', (0, 0), (-1, -1), 0.5, colors.white),
        ('BOX', (0, 0), (-1, -1), 2, colors.black),
        ('SPAN', (0, 0), (-1, 0)),
        ('ROWBACKGROUNDS', (0, 3), (-1, -1), (colors.Color(0.9, 0.9, 0.9), colors.white)),
        ('BACKGROUND', (0, 2), (-1, 2), colors.fidlightblue),
        ('BACKGROUND', (0, 1), (-1, 1), colors.white),
        ('LINEABOVE', (0, 0), (-1, 0), 1.5, colors.black),
        ('LINEBELOW', (0, 0), (-1, 0), 1.5, colors.black),
        ('SIZE', (0, 0), (-1, 0), 12),
        ('ALIGN', (0, 0), (-1, 0), 'CENTER'),
        ('VALIGN', (0, 0), (-1, 0), 'MIDDLE'),
        ('TEXTCOLOR', (0, 2), (-1, 2), colors.black),
    ]

    story = []
    cabecera = estiloHoja['Heading2']
    cabecera.pageBreakBefore = 0
    cabecera.keepWithNext = 0
    cabecera.backColor = colors.white
    cabecera.spaceAfter = 0
    cabecera.spaceBefore = 0
    parrafo = Paragraph('', cabecera)
    story.append(parrafo)
    parrafo = Paragraph('PRIMER INFORME DEL' + '"' + proyecto_actual.nombre_largo + '" : ', cabecera)
    story.append(parrafo)
    parrafo = Paragraph('_' * 66, cabecera)
    story.append(parrafo)
    cabecera2 = estiloHoja['Heading1']
    cabecera2.pageBreakBefore = 0
    cabecera2.keepWithNext = 0
    cabecera2.backColor = colors.white
    parrafo = Paragraph('   ', cabecera2)
    story.append(parrafo)

    ltrabajoequipo = []
    ltrabajoequipo.append(['1. CANTIDAD DE TRABAJOS EN CURSO POR EQUIPO', '', ''])
    ltrabajoequipo.append([' ', ' ', ' '])
    ltrabajoequipo.append(['EQUIPO DE DESARROLLADORES', 'CANTIDAD DE TRABAJOS', 'ESTADO'])
    canttrabajo = 0
    for u in uh:
        if u.estado == 'Activo':
            canttrabajo = canttrabajo + 1

    ltrabajoequipo.append(['Equipo 1', canttrabajo, 'Activo'])

    t = Table(ltrabajoequipo, style=style)
    story.append(t)
    story.append(Spacer(0, 20))
    story.append(parrafo)
    parrafo = Paragraph('_' * 66, cabecera)
    story.append(parrafo)
    #parrafo = Paragraph('FIN DE PRIMER INFORME' + ' ' * 100 + '(' + str(datetime.date.today()) + ')', cabecera)
    parrafo = Paragraph('FIN DE PRIMER INFORME', cabecera)
    story.append(parrafo)
    buff = BytesIO()
    doc = SimpleDocTemplate(buff,
                            pagesize=letter,
                            rightMargin=40,
                            leftMargin=40,
                            topMargin=60,
                            bottomMargin=18,
    )
    doc.build(story)
    response = HttpResponse(content_type='application/pdf')
    pdf_name = "Reporte.pdf"
    response.write(buff.getvalue())
    buff.close()
    return response


def reporte2_pdf(request, pk_proyecto):
    """
    Metodo que genera el reporte 2
    :param request: contiene la informacion sobre la pagina que lo llamo
    :param proyecto_id: id del proyecto del cual se generara el reporte
    :return: reporte en pdf
    """
    proyecto_actual = Proyecto.objects.get(id=pk_proyecto)
    uh = UserStory.objects.filter(proyecto=proyecto_actual)

    estiloHoja = getSampleStyleSheet()
    style = [
        ('GRID', (0, 0), (-1, -1), 0.5, colors.white),
        ('BOX', (0, 0), (-1, -1), 2, colors.black),
        ('SPAN', (0, 0), (-1, 0)),
        ('ROWBACKGROUNDS', (0, 3), (-1, -1), (colors.Color(0.9, 0.9, 0.9), colors.white)),
        ('BACKGROUND', (0, 2), (-1, 2), colors.fidlightblue),
        ('BACKGROUND', (0, 1), (-1, 1), colors.white),
        ('LINEABOVE', (0, 0), (-1, 0), 1.5, colors.black),
        ('LINEBELOW', (0, 0), (-1, 0), 1.5, colors.black),
        ('SIZE', (0, 0), (-1, 0), 12),
        ('ALIGN', (0, 0), (-1, 0), 'CENTER'),
        ('VALIGN', (0, 0), (-1, 0), 'MIDDLE'),
        ('TEXTCOLOR', (0, 2), (-1, 2), colors.black),
    ]

    story = []
    cabecera = estiloHoja['Heading2']
    cabecera.pageBreakBefore = 0
    cabecera.keepWithNext = 0
    cabecera.backColor = colors.white
    cabecera.spaceAfter = 0
    cabecera.spaceBefore = 0
    parrafo = Paragraph('', cabecera)
    story.append(parrafo)
    parrafo = Paragraph('SEGUNDO INFORME DEL' + '"' + proyecto_actual.nombre_largo + '" : ', cabecera)
    story.append(parrafo)
    parrafo = Paragraph('_' * 66, cabecera)
    story.append(parrafo)
    cabecera2 = estiloHoja['Heading1']
    cabecera2.pageBreakBefore = 0
    cabecera2.keepWithNext = 0
    cabecera2.backColor = colors.white
    parrafo = Paragraph('   ', cabecera2)
    story.append(parrafo)
    ltrabajoequipo = []
    ltrabajoequipo.append(['2. CANTIDAD DE TRABAJOS POR USUARIO', '', '', ''])
    ltrabajoequipo.append([' ', ' ', ' ', ' '])
    ltrabajoequipo.append(['USUARIO', 'TRABAJOS PENDIENTES', 'TRABAJOS INICIADOS', 'TRABAJOS FINALIZADOS'])
    #urp = RolProyecto_Proyecto.objects.filter(proyecto=proyecto_actual)

    #user = User.objects.get(pk=self.kwargs['pk_user'])
    solo_del_usuario = RolProyecto_Proyecto.objects.filter(proyecto=proyecto_actual)

    #proyecto = Proyecto.objects.get(pk=pk_proyecto)
    #lista_equipo = Proyecto.objects.get(pk=pk_proyecto).equipo.all().order_by('id')
    #print lista_equipo



    #for i in urp:
    #     if i.rol_proyecto == 'Developer':


    for rol in solo_del_usuario:
        #print rol
        if rol.rol_proyecto.group.name == "Developer":

             usp = UserStory.objects.filter(usuario=rol.user, proyecto=proyecto_actual, estado='Pendiente')
             usi = UserStory.objects.filter(usuario=rol.user, proyecto=proyecto_actual, estado='Activo')
             usf = UserStory.objects.filter(usuario=rol.user, proyecto=proyecto_actual, estado='Aprobado')
             ltrabajoequipo.append([rol.user, len(usp), len(usi), len(usf)])


    t = Table(ltrabajoequipo, style=style)
    story.append(t)
    story.append(Spacer(0, 20))
    story.append(parrafo)
    parrafo = Paragraph('_' * 66, cabecera)
    story.append(parrafo)
    #parrafo = Paragraph('FIN DE SEGUNDO INFORME' + ' ' * 100 + '(' + str(datetime.date.today()) + ')', cabecera)
    parrafo = Paragraph('FIN DE SEGUNDO INFORME', cabecera)
    story.append(parrafo)
    buff = BytesIO()
    doc = SimpleDocTemplate(buff,
                            pagesize=letter,
                            rightMargin=40,
                            leftMargin=40,
                            topMargin=60,
                            bottomMargin=18,
    )
    doc.build(story)
    response = HttpResponse(content_type='application/pdf')
    pdf_name = "Reporte.pdf"
    response.write(buff.getvalue())
    buff.close()
    return response


def reporte3_pdf(request, pk_proyecto):
    """
    Metodo que genera el reporte 3
    :param request: contiene informacion sobre la pagina que lo llamo
    :param proyecto_id: id del proyecto del cual se generara el reporte
    :return: reporte en formato pdf
    """
    proyecto_actual = Proyecto.objects.get(id=pk_proyecto)
    uh = UserStory.objects.filter(proyecto=proyecto_actual).order_by('-valor_tecnico')

    estiloHoja = getSampleStyleSheet()
    style = [
        ('GRID', (0, 0), (-1, -1), 0.5, colors.white),
        ('BOX', (0, 0), (-1, -1), 2, colors.black),
        ('SPAN', (0, 0), (-1, 0)),
        ('ROWBACKGROUNDS', (0, 3), (-1, -1), (colors.Color(0.9, 0.9, 0.9), colors.white)),
        ('BACKGROUND', (0, 2), (-1, 2), colors.fidlightblue),
        ('BACKGROUND', (0, 1), (-1, 1), colors.white),
        ('LINEABOVE', (0, 0), (-1, 0), 1.5, colors.black),
        ('LINEBELOW', (0, 0), (-1, 0), 1.5, colors.black),
        ('SIZE', (0, 0), (-1, 0), 12),
        ('ALIGN', (0, 0), (-1, 0), 'CENTER'),
        ('VALIGN', (0, 0), (-1, 0), 'MIDDLE'),
        ('TEXTCOLOR', (0, 2), (-1, 2), colors.black),
    ]

    story = []
    cabecera = estiloHoja['Heading2']
    cabecera.pageBreakBefore = 0
    cabecera.keepWithNext = 0
    cabecera.backColor = colors.white
    cabecera.spaceAfter = 0
    cabecera.spaceBefore = 0
    parrafo = Paragraph('', cabecera)
    story.append(parrafo)
    parrafo = Paragraph('TERCER INFORME DEL' + '"' + proyecto_actual.nombre_largo + '" : ', cabecera)
    story.append(parrafo)
    parrafo = Paragraph('_' * 66, cabecera)
    story.append(parrafo)
    cabecera2 = estiloHoja['Heading1']
    cabecera2.pageBreakBefore = 0
    cabecera2.keepWithNext = 0
    cabecera2.backColor = colors.white
    parrafo = Paragraph('   ', cabecera2)
    story.append(parrafo)

    ltrabajoequipo = []
    ltrabajoequipo.append(['3. LISTA DE ACTIVIDADES PARA COMPLETAR EL PROYECTO', '', ''])
    ltrabajoequipo.append([' ', ' ', ''])
    ltrabajoequipo.append(['PRIORIDAD', 'ACTIVIDADES', 'ESTADO'])
    for u in uh:
        if u.estado != 'Finalizado' and u.estado != 'Aprobado' and u.estado != 'Descartado':
            ltrabajoequipo.append([u.valor_tecnico, u.nombre, u.estado])

    t = Table(ltrabajoequipo, style=style)
    story.append(t)
    story.append(Spacer(0, 20))
    story.append(parrafo)
    parrafo = Paragraph('_' * 66, cabecera)
    story.append(parrafo)
    #parrafo = Paragraph('FIN DE TERCER INFORME' + ' ' * 100 + '(' + str(datetime.date.today()) + ')', cabecera)
    parrafo = Paragraph('FIN DE TERCER INFORME', cabecera)
    story.append(parrafo)
    buff = BytesIO()
    doc = SimpleDocTemplate(buff,
                            pagesize=letter,
                            rightMargin=40,
                            leftMargin=40,
                            topMargin=60,
                            bottomMargin=18,
    )
    doc.build(story)
    response = HttpResponse(content_type='application/pdf')
    pdf_name = "Reporte.pdf"
    response.write(buff.getvalue())
    buff.close()
    return response


def reporte4_pdf(request, pk_proyecto):
    from reportlab.graphics.shapes import Drawing, Rect, String, Group, Line
    from reportlab.graphics.charts.barcharts import VerticalBarChart

    proy = Proyecto.objects.get(id=pk_proyecto)
    story = []
    estilo = getSampleStyleSheet()
    import pprint

    estiloHoja = getSampleStyleSheet()
    cabecera = estiloHoja['Heading2']
    cabecera.pageBreakBefore = 0
    cabecera.keepWithNext = 0
    cabecera.backColor = colors.white
    cabecera.spaceAfter = 0
    cabecera.spaceBefore = 0
    parrafo = Paragraph('', cabecera)
    story.append(parrafo)
    parrafo = Paragraph('CUARTO INFORME DEL' + '"' + proy.nombre_largo + '" : ', cabecera)
    story.append(parrafo)
    parrafo = Paragraph('_' * 66, cabecera)
    story.append(parrafo)
    cabecera2 = estiloHoja['Heading2']
    cabecera2.pageBreakBefore = 0
    cabecera2.keepWithNext = 0
    cabecera2.backColor = colors.white
    parrafo = Paragraph(
        'GRAFICO DE TIEMPO ESTIMADO Y EJECUTADO POR SPRINT DEL PROYECTO' + '"' + proy.nombre_largo + '"', cabecera2)
    story.append(parrafo)
    d = Drawing(400, 200)

    sprints = Sprint.objects.filter(proyecto=proy)
    print sprints
    listasprint = []
    listaplan = []
    listaejec = []

    for sp in sprints:
        listasprint.append(sp.nombre)
        US = UserStory.objects.filter(sprint=sp)
        tarea = Tarea.objects.filter(id=US.id)

        totalus = 0
        sumatarea = 0
        for u in US:
            totalus += u.estimacion

            for t in tarea:
                sumatarea += t.horas_de_trabajo

        listaejec.append(totalus)
        listaplan.append(sumatarea)

    mayor = 0
    for j in listaejec:
        if j > mayor:
            mayor = j
    for j in listaplan:
        if j > mayor:
            mayor = j

    data = [listaplan, listaejec]
    bc = VerticalBarChart()
    bc.x = 50
    bc.y = 50
    bc.height = 125
    bc.width = 300
    bc.data = data
    bc.strokeColor = colors.black
    bc.valueAxis.valueMin = 0
    bc.valueAxis.valueMax = mayor + 10
    bc.valueAxis.valueStep = 10  #paso de distancia entre punto y punto
    bc.categoryAxis.labels.boxAnchor = 'ne'
    bc.categoryAxis.labels.dx = 8
    bc.categoryAxis.labels.dy = -2
    bc.categoryAxis.labels.angle = 30
    bc.categoryAxis.categoryNames = listasprint
    bc.groupSpacing = 10
    bc.barSpacing = 2

    d.add(bc)
    pprint.pprint(bc.getProperties())
    story.append(d)
    cabecera2 = estiloHoja['Heading2']
    cabecera2.pageBreakBefore = 0
    cabecera2.keepWithNext = 0
    cabecera2.backColor = colors.white
    parrafo = Paragraph('ROJO = TIEMPO ESTIMADO', cabecera2)
    story.append(parrafo)
    cabecera2 = estiloHoja['Heading2']
    cabecera2.pageBreakBefore = 0
    cabecera2.keepWithNext = 0
    cabecera2.backColor = colors.white
    parrafo = Paragraph('VERDE = TIEMPO EJECUTADO', cabecera2)
    story.append(parrafo)
    story.append(Spacer(0, 20))
    parrafo = Paragraph('_' * 66, cabecera)
    story.append(parrafo)
    #parrafo = Paragraph('FIN DE CUARTO INFORME' + ' ' * 100 + '(' + str(datetime.date.today()) + ')', cabecera)
    parrafo = Paragraph('FIN DE CUARTO INFORME', cabecera)
    story.append(parrafo)
    buff = BytesIO()
    doc = SimpleDocTemplate(buff,
                            pagesize=letter,
                            rightMargin=40,
                            leftMargin=40,
                            topMargin=60,
                            bottomMargin=18,
    )
    doc.build(story)
    response = HttpResponse(content_type='application/pdf')
    pdf_name = "Reporte.pdf"
    response.write(buff.getvalue())
    buff.close()
    return response


def reporte5_pdf(request, pk_proyecto):
    """
    Metodo para generar reporte 5
    :param request: contiene la informacion de la pagina que lo llamo
    :param proyecto_id: id del proyecto del cual se genera el reporte
    :return: reporte en formato pdf
    """
    proyecto_actual = Proyecto.objects.get(id=pk_proyecto)
    uh = UserStory.objects.filter(proyecto=proyecto_actual).order_by('-valor_tecnico')

    estiloHoja = getSampleStyleSheet()
    style = [
        ('GRID', (0, 0), (-1, -1), 0.5, colors.white),
        ('BOX', (0, 0), (-1, -1), 2, colors.black),
        ('SPAN', (0, 0), (-1, 0)),
        ('ROWBACKGROUNDS', (0, 3), (-1, -1), (colors.Color(0.9, 0.9, 0.9), colors.white)),
        ('BACKGROUND', (0, 2), (-1, 2), colors.fidlightblue),
        ('BACKGROUND', (0, 1), (-1, 1), colors.white),
        ('LINEABOVE', (0, 0), (-1, 0), 1.5, colors.black),
        ('LINEBELOW', (0, 0), (-1, 0), 1.5, colors.black),
        ('SIZE', (0, 0), (-1, 0), 12),
        ('ALIGN', (0, 0), (-1, 0), 'CENTER'),
        ('VALIGN', (0, 0), (-1, 0), 'MIDDLE'),
        ('TEXTCOLOR', (0, 2), (-1, 2), colors.black),
    ]

    story = []
    cabecera = estiloHoja['Heading2']
    cabecera.pageBreakBefore = 0
    cabecera.keepWithNext = 0
    cabecera.backColor = colors.white
    cabecera.spaceAfter = 0
    cabecera.spaceBefore = 0
    parrafo = Paragraph('', cabecera)
    story.append(parrafo)
    parrafo = Paragraph('QUINTO INFORME DEL' + '"' + proyecto_actual.nombre_largo + '" : ', cabecera)
    story.append(parrafo)
    parrafo = Paragraph('_' * 66, cabecera)
    story.append(parrafo)
    cabecera2 = estiloHoja['Heading1']
    cabecera2.pageBreakBefore = 0
    cabecera2.keepWithNext = 0
    cabecera2.backColor = colors.white
    parrafo = Paragraph('   ', cabecera2)
    story.append(parrafo)

    ltrabajoequipo = []
    ltrabajoequipo.append(['5. BACKLOG DEL PRODUCTO', '', '', ''])
    ltrabajoequipo.append([' ', ' ', ' ', ' '])
    ltrabajoequipo.append(['NOMBRE', 'DESCRIPCION', 'VALOR TECNICO', 'ESTADO'])
    for u in uh:
        if u.estado != 'Descartado' and u.estado != 'Finalizado' and u.estado != 'Aprobado':
            ltrabajoequipo.append([u.nombre, u.descripcion, u.valor_tecnico, u.estado])

    t = Table(ltrabajoequipo, style=style)
    story.append(t)
    story.append(Spacer(0, 20))
    story.append(parrafo)
    parrafo = Paragraph('_' * 66, cabecera)
    story.append(parrafo)
    #parrafo = Paragraph('FIN DE QUINTO INFORME' + ' ' * 100 + '(' + str(datetime.date.today()) + ')', cabecera)
    parrafo = Paragraph('FIN DE QUINTO INFORME', cabecera)
    story.append(parrafo)
    buff = BytesIO()
    doc = SimpleDocTemplate(buff,
                            pagesize=letter,
                            rightMargin=40,
                            leftMargin=40,
                            topMargin=60,
                            bottomMargin=18,
    )
    doc.build(story)
    response = HttpResponse(content_type='application/pdf')
    pdf_name = "Reporte.pdf"
    response.write(buff.getvalue())
    buff.close()
    return response


def reporte6_pdf(request, pk_proyecto):
    """
    Metodo con el cual se crea el reporte 6 en formato pdf
    :param request: contiene la informacion de la pagino que lo llamo
    :param proyecto_id: id del proyecto del cual se genera el reporte
    :return: reporte en formato pdf
    """
    proyecto_actual = Proyecto.objects.get(id=pk_proyecto)
    uh = UserStory.objects.filter(proyecto=proyecto_actual)

    estiloHoja = getSampleStyleSheet()
    style = [
        ('GRID', (0, 0), (-1, -1), 0.5, colors.white),
        ('BOX', (0, 0), (-1, -1), 2, colors.black),
        ('SPAN', (0, 0), (-1, 0)),
        ('ROWBACKGROUNDS', (0, 3), (-1, -1), (colors.Color(0.9, 0.9, 0.9), colors.white)),
        ('BACKGROUND', (0, 2), (-1, 2), colors.fidlightblue),
        ('BACKGROUND', (0, 1), (-1, 1), colors.white),
        ('LINEABOVE', (0, 0), (-1, 0), 1.5, colors.black),
        ('LINEBELOW', (0, 0), (-1, 0), 1.5, colors.black),
        ('SIZE', (0, 0), (-1, 0), 12),
        ('ALIGN', (0, 0), (-1, 0), 'CENTER'),
        ('VALIGN', (0, 0), (-1, 0), 'MIDDLE'),
        ('TEXTCOLOR', (0, 2), (-1, 2), colors.black),
    ]

    story = []
    cabecera = estiloHoja['Heading2']
    cabecera.pageBreakBefore = 0
    cabecera.keepWithNext = 0
    cabecera.backColor = colors.white
    cabecera.spaceAfter = 0
    cabecera.spaceBefore = 0
    parrafo = Paragraph('', cabecera)
    story.append(parrafo)
    parrafo = Paragraph('SEXTO INFORME DEL' + '"' + proyecto_actual.nombre_largo + '" : ', cabecera)
    story.append(parrafo)
    parrafo = Paragraph('_' * 66, cabecera)
    story.append(parrafo)
    cabecera2 = estiloHoja['Heading1']
    cabecera2.pageBreakBefore = 0
    cabecera2.keepWithNext = 0
    cabecera2.backColor = colors.white
    parrafo = Paragraph('   ', cabecera2)
    story.append(parrafo)
    ltrabajoequipo = []
    ltrabajoequipo.append(['6. SPRINT BACKLOG', '', ''])
    ltrabajoequipo.append([' ', ' ', ''])
    ltrabajoequipo.append(['NOMBRE', 'ACTIVIDADES', 'ESTADO', 'USUARIO'])
    for u in uh:
        print uh
        if u.estado != 'Descartado' and u.estado != 'Finalizado' and u.estado != 'Aprobado' and u.estado != 'No asignado':
            ltrabajoequipo.append([u.sprint.nombre, u.nombre, u.sprint.estado, u.usuario.username])

    t = Table(ltrabajoequipo, style=style)
    story.append(t)
    story.append(Spacer(0, 20))
    story.append(parrafo)
    parrafo = Paragraph('_' * 66, cabecera)
    story.append(parrafo)
    #parrafo = Paragraph('FIN DE SEXTO INFORME' + ' ' * 100 + '(' + str(datetime.date.today()) + ')', cabecera)
    parrafo = Paragraph('FIN DE SEXTO INFORME', cabecera)
    story.append(parrafo)
    buff = BytesIO()
    doc = SimpleDocTemplate(buff,
                            pagesize=letter,
                            rightMargin=40,
                            leftMargin=40,
                            topMargin=60,
                            bottomMargin=18,
    )
    doc.build(story)
    response = HttpResponse(content_type='application/pdf')
    pdf_name = "Reporte.pdf"
    response.write(buff.getvalue())
    buff.close()
    return response