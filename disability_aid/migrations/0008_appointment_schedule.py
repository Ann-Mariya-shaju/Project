# Generated by Django 3.2.24 on 2024-04-17 09:16

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('disability_aid', '0007_auto_20240327_1034'),
    ]

    operations = [
        migrations.CreateModel(
            name='schedule',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('date', models.DateField()),
                ('from_time', models.CharField(max_length=100)),
                ('to_time', models.CharField(max_length=100)),
                ('DOCTOR', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='disability_aid.doctor')),
            ],
        ),
        migrations.CreateModel(
            name='appointment',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('date', models.DateField()),
                ('token', models.CharField(max_length=100)),
                ('SCHEDULE', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='disability_aid.schedule')),
                ('USER', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='disability_aid.user')),
            ],
        ),
    ]
