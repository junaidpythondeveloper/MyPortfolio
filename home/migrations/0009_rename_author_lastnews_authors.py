# Generated by Django 4.1.5 on 2023-02-05 15:38

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('home', '0008_lastnews_author'),
    ]

    operations = [
        migrations.RenameField(
            model_name='lastnews',
            old_name='author',
            new_name='authors',
        ),
    ]
