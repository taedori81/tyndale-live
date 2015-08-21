# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('home', '0003_auto_20150810_1948'),
    ]

    operations = [
        migrations.AddField(
            model_name='adjunctprofessor',
            name='order_number',
            field=models.IntegerField(default=10),
        ),
        migrations.AddField(
            model_name='professor',
            name='order_number',
            field=models.IntegerField(default=10),
        ),
    ]
