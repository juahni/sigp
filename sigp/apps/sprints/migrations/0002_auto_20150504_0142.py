# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('sprints', '0001_initial'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='sprint',
            options={'default_permissions': ('crear', 'modificar', 'listar', 'iniciar', 'finalizar')},
        ),
        migrations.RemoveField(
            model_name='sprint',
            name='flujos',
        ),
    ]
