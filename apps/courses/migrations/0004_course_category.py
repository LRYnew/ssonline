# -*- coding: utf-8 -*-
# Generated by Django 1.11 on 2018-04-17 19:47
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('courses', '0003_auto_20180409_2218'),
    ]

    operations = [
        migrations.AddField(
            model_name='course',
            name='category',
            field=models.CharField(default='后端开发', max_length=100, verbose_name='课程类别'),
        ),
    ]
