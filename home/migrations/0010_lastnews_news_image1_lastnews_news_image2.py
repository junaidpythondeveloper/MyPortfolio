# Generated by Django 4.1.5 on 2023-02-05 15:58

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('home', '0009_rename_author_lastnews_authors'),
    ]

    operations = [
        migrations.AddField(
            model_name='lastnews',
            name='news_image1',
            field=models.FileField(default=None, max_length=250, null=True, upload_to='news/'),
        ),
        migrations.AddField(
            model_name='lastnews',
            name='news_image2',
            field=models.FileField(default=None, max_length=250, null=True, upload_to='news/'),
        ),
    ]
