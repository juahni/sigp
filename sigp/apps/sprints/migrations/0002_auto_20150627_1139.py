# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
import datetime
import django.core.validators


class Migration(migrations.Migration):

    dependencies = [
        ('sprints', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='sprint',
            name='fecha_fin',
            field=models.DateField(default=datetime.date(2015, 6, 27), null=True),
            preserve_default=True,
        ),
        migrations.AddField(
            model_name='sprint',
            name='fecha_inicio',
            field=models.DateField(default=datetime.date(2015, 6, 27), null=True),
            preserve_default=True,
        ),
        migrations.AlterField(
            model_name='sprint',
            name='duracion',
            field=models.IntegerField(default=0, null=True, validators=[django.core.validators.MinValueValidator(0), django.core.validators.MaxValueValidator(30)]),
            preserve_default=True,
        ),
        migrations.AlterField(
            model_name='sprint',
            name='estado',
            field=models.CharField(default=b'No iniciado', max_length=15, null=True, choices=[(b'No iniciado', b'No iniciado'), (b'Activo', b'Activo'), (b'Finalizado', b'Finalizado')]),
            preserve_default=True,
        ),
        migrations.AlterField(
            model_name='sprint',
            name='nombre',
            field=models.CharField(max_length=15, null=True),
            preserve_default=True,
        ),
    ]
