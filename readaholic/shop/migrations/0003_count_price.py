# Generated by Django 3.1 on 2021-03-27 10:42

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('shop', '0002_auto_20210326_2227'),
    ]

    operations = [
        migrations.AddField(
            model_name='count',
            name='price',
            field=models.DecimalField(decimal_places=2, default=0.0, max_digits=10),
        ),
    ]