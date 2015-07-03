# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
import datetime


class Migration(migrations.Migration):

    dependencies = [
        ('sprints', '0002_auto_20150627_1139'),
    ]

    operations = [
        migrations.AlterField(
            model_name='sprint',
            name='fecha_fin',
            field=models.DateField(default=datetime.date(2015, 7, 2), null=True),
            preserve_default=True,
        ),
        migrations.AlterField(
            model_name='sprint',
            name='fecha_inicio',
            field=models.DateField(default=datetime.date(2015, 7, 2), null=True),
            preserve_default=True,
        ),
    ]
