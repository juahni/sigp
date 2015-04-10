from django.db import models
from django.contrib.auth.models import User
from django.core.urlresolvers import reverse

#class
class Usuario(models.Model):
    """
    Clase Usuario.
    Crea el perfil del usuario para cada instancia de la clase User,
    el cual define los campos username, password, nombre, apellido,
    email y groups. Se extiende la funcionalidad para almacenar
    telefono, direccion y roles de proyecto, de esta manera, para cada
    User existe un unico perfil de Usuario.
    """

    user = models.OneToOneField(User)
    telefono = models.CharField(max_length=20)
    direccion = models.CharField(max_length=50)

    def __unicode__(self):
        return self.user.get_username()

    def get_absolute_url(self):
        return reverse('usuarios', kwargs={'pk': self.pk})

CATEGORY_CHOICES = (
			('1', 'Rol de Sistema'),
			('2', 'Rol de Proyecto'),
		   )

COMPLEXITY_CHOICES = (
			('1', '1'),
			('2', '2'),
			('3', '3'),
			('4', '4'),
			('5', '5'),
			('6', '6'),
			('7', '7'),
			('8', '8'),
			('9', '9'),
			('10', '10'),
		     )

STATUS_CHOICES = (
			('1', 'Pendiente'),
			('2', 'Modificado'),
			('3', 'Revisado'),
		)

class Permiso(models.Model):
	"""Modelo Permiso"""
	nombre = models.CharField(unique=True, max_length=50)
	categoria = models.IntegerField(max_length=1, choices=CATEGORY_CHOICES)

	def __unicode__(self):
		return self.nombre

class Rol(models.Model):
	nombre = models.CharField(unique=True, max_length=50)
	categoria = models.IntegerField(max_length=1, choices=CATEGORY_CHOICES)
	descripcion = models.TextField(null=True, blank=True)
	fecHor_creacion = models.DateTimeField(auto_now=False, auto_now_add=True, null=True, blank=True, editable=False)
	usuario_creador = models.ForeignKey(User, null=True)
	permisos = models.ManyToManyField(Permiso, through='RolPermiso')

	def __unicode__(self):
		return self.nombre

class RolPermiso(models.Model):
	"""Modelo Rol Permiso"""
	rol = models.ForeignKey(Rol)
	permiso = models.ForeignKey(Permiso)

class UsuarioRolSistema (models.Model):
	"""Modelo Usuario Rol Sistema"""
	usuario = models.ForeignKey(User)
	rol = models.ForeignKey(Rol)

	class Meta:
		unique_together = [("usuario", "rol")]



#class UsuarioRolProyecto(models.Model):
#    usuario = models.ForeignKey(User)
#    rol = models.ForeignKey(Rol, null=True)
#    proyecto = models.ForeignKey(Proyecto)

#    class Meta:
#        unique_together = [("usuario", "rol", "proyecto")]

class Flujo(models.Model):
    """Esta clase representa el flujo para proyecto"""
    nombre = models.CharField(unique=True, max_length=50)
    descripcion = models.TextField(null=True, blank=True)
    fecHor_creacion = models.DateTimeField(auto_now=False, auto_now_add=True, null=True, blank=True, editable=False)
    usuario_creador = models.ForeignKey(User, null=True)
    #proyecto= models.IntegerField()

    def __unicode__(self):
        return self.nombre

