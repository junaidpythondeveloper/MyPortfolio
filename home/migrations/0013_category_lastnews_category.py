# Generated by Django 4.1.5 on 2023-02-06 17:55

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('home', '0012_lastnews_post_data'),
    ]

    operations = [
        migrations.CreateModel(
            name='Category',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=150)),
            ],
        ),
        migrations.AddField(
            model_name='lastnews',
            name='category',
            field=models.CharField(default='coding', max_length=150),
        ),
    ]
