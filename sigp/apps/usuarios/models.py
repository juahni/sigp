from django.db import models
from django.contrib.auth.models import User
from django.core.urlresolvers import reverse
from apps.roles_proyecto.models import RolProyecto


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
    rolesproyecto = models.ManyToManyField(RolProyecto, null=True)
    User._meta.get_field('email')._unique = True

    def __unicode__(self):
        return self.user.get_username()

    def get_absolute_url(self):
        return reverse('usuarios', kwargs={'pk': self.pk})

    class Meta:
        default_permissions = ('crear', 'modificar', 'activar', 'inactivar', 'listar')
