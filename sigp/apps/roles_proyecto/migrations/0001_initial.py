from __future__ import unicode_literals

from django.db import models, migrations
from django.conf import settings
import django.core.validators


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('auth', '__latest__'),
        ('proyectos', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='RolProyecto',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('es_rol_proyecto', models.BooleanField(default=False)),
                ('group', models.OneToOneField(null=True, to='auth.Group')),
            ],
            options={
                'default_permissions': ('crear', 'modificar', 'eliminar', 'listar'),
                'verbose_name': 'Rol de Proyecto',
                'verbose_name_plural': 'Roles de Proyecto',
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='RolProyecto_Proyecto',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('horas_developer', models.IntegerField(default=0, validators=[django.core.validators.MinValueValidator(0)])),
                ('proyecto', models.ForeignKey(to='proyectos.Proyecto')),
                ('rol_proyecto', models.ForeignKey(to='roles_proyecto.RolProyecto')),
                ('user', models.ForeignKey(to=settings.AUTH_USER_MODEL, null=True)),
            ],
            options={
                'default_permissions': (),
            },
            bases=(models.Model,),
        ),
    ]