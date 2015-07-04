# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
import datetime


class Migration(migrations.Migration):

    dependencies = [
        ('sprints', '0003_auto_20150702_2231'),
    ]

    operations = [
        migrations.AlterField(
            model_name='sprint',
            name='fecha_fin',
            field=models.DateField(default=datetime.date(2015, 7, 3), null=True),
            preserve_default=True,
        ),
        migrations.AlterField(
            model_name='sprint',
            name='fecha_inicio',
            field=models.DateField(default=datetime.date(2015, 7, 3), null=True),
            preserve_default=True,
        ),
    ]
