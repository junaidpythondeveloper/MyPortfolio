# Generated by Django 4.1.5 on 2023-02-02 17:45

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('home', '0002_lastnews'),
    ]

    operations = [
        migrations.AddField(
            model_name='lastnews',
            name='title',
            field=models.CharField(default='hello', max_length=50),
            preserve_default=False,
        ),
    ]
