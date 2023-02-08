# Generated by Django 4.1.5 on 2023-02-04 18:04

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('home', '0005_lastnews_news_desc_alter_lastnews_news_image'),
    ]

    operations = [
        migrations.CreateModel(
            name='IpModel',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('ip', models.CharField(max_length=100)),
            ],
        ),
        migrations.AddField(
            model_name='lastnews',
            name='likes',
            field=models.ManyToManyField(blank=True, related_name='post_likes', to='home.ipmodel'),
        ),
    ]
