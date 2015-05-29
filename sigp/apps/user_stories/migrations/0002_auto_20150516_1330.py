# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
from django.conf import settings


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('user_stories', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Archivo',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('archivo', models.FileField(upload_to=b'user-stories')),
                ('user_story', models.ForeignKey(related_name='user_story_archivo', to='user_stories.UserStory')),
            ],
            options={
                'default_permissions': (),
            },
            bases=(models.Model,),
        ),
        migrations.AddField(
            model_name='tarea',
            name='tipo',
            field=models.CharField(default=b'Cambio de Estado', max_length=25, choices=[(b'Registro de Tarea', b'Registro de Tarea'), (b'Cambio de Estado', b'Cambio de Estado')]),
            preserve_default=True,
        ),
        migrations.AddField(
            model_name='tarea',
            name='usuario',
            field=models.ForeignKey(related_name='user_tarea', default=1, to=settings.AUTH_USER_MODEL),
            preserve_default=True,
        ),
    ]
