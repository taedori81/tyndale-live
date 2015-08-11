# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
import modelcluster.fields
import django.db.models.deletion
import wagtail.wagtailcore.fields


class Migration(migrations.Migration):

    dependencies = [
        ('wagtailcore', '0001_squashed_0016_change_page_url_path_to_text_field'),
        ('wagtailimages', '0006_add_verbose_names'),
        ('home', '0002_create_homepage'),
    ]

    operations = [
        migrations.CreateModel(
            name='AboutPage',
            fields=[
                ('page_ptr', models.OneToOneField(serialize=False, parent_link=True, to='wagtailcore.Page', auto_created=True, primary_key=True)),
                ('subsection_title', models.CharField(help_text='maximum length of 30 characters', max_length=30, default='title goes here')),
                ('subsection_subtitle', models.CharField(help_text='maximum length of 100 characters', max_length=100, default='subtitle goes here')),
                ('body', wagtail.wagtailcore.fields.RichTextField(default='About Tyndale....')),
                ('main_image', models.ForeignKey(on_delete=django.db.models.deletion.SET_NULL, help_text='Image size must be 750 x 300 (width x height)', related_name='+', to='wagtailimages.Image', null=True)),
            ],
            options={
                'abstract': False,
            },
            bases=('wagtailcore.page',),
        ),
        migrations.CreateModel(
            name='AcademicPage',
            fields=[
                ('page_ptr', models.OneToOneField(serialize=False, parent_link=True, to='wagtailcore.Page', auto_created=True, primary_key=True)),
                ('subsection_title', models.CharField(help_text='maximum length of 30 characters', max_length=30, default='title goes here')),
                ('subsection_subtitle', models.CharField(help_text='maximum length of 100 characters', max_length=100, default='subtitle goes here')),
                ('body', wagtail.wagtailcore.fields.RichTextField(default='Academics....')),
                ('main_image', models.ForeignKey(on_delete=django.db.models.deletion.SET_NULL, help_text='Image size must be 750 x 300 (width x height)', related_name='+', to='wagtailimages.Image', null=True)),
            ],
            options={
                'abstract': False,
            },
            bases=('wagtailcore.page',),
        ),
        migrations.CreateModel(
            name='AcademicProgramPage',
            fields=[
                ('page_ptr', models.OneToOneField(serialize=False, parent_link=True, to='wagtailcore.Page', auto_created=True, primary_key=True)),
                ('subsection_title', models.CharField(help_text='maximum length of 30 characters', max_length=30, default='title goes here')),
                ('subsection_subtitle', models.CharField(help_text='maximum length of 100 characters', max_length=100, default='subtitle goes here')),
            ],
            options={
                'abstract': False,
            },
            bases=('wagtailcore.page',),
        ),
        migrations.CreateModel(
            name='AcademicPrograms',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('program_name', models.CharField(max_length=50)),
                ('program_description', wagtail.wagtailcore.fields.RichTextField()),
            ],
        ),
        migrations.CreateModel(
            name='AdjunctProfessor',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('professor_name', models.CharField(help_text='Professor name with maximum length of 30 characters', max_length=30, default='Professor Name', verbose_name='Professor Name')),
                ('professor_spec', wagtail.wagtailcore.fields.RichTextField(default='Professor Spec.', verbose_name='Professor Spec')),
                ('professor_course', models.CharField(help_text='Professor title with maximum length of 100 characters', max_length=100, verbose_name='Course')),
                ('professor_image', models.ForeignKey(on_delete=django.db.models.deletion.SET_NULL, help_text='Picture must be size of 150 x 200 (width x height)', related_name='+', blank=True, to='wagtailimages.Image', null=True)),
            ],
            options={
                'abstract': False,
            },
        ),
        migrations.CreateModel(
            name='AdmissionPage',
            fields=[
                ('page_ptr', models.OneToOneField(serialize=False, parent_link=True, to='wagtailcore.Page', auto_created=True, primary_key=True)),
                ('subsection_title', models.CharField(help_text='maximum length of 30 characters', max_length=30, default='title goes here')),
                ('subsection_subtitle', models.CharField(help_text='maximum length of 100 characters', max_length=100, default='subtitle goes here')),
                ('body', wagtail.wagtailcore.fields.RichTextField(default='About admission....')),
                ('main_image', models.ForeignKey(on_delete=django.db.models.deletion.SET_NULL, help_text='Image size must be 750 x 300 (width x height)', related_name='+', to='wagtailimages.Image', null=True)),
            ],
            options={
                'abstract': False,
            },
            bases=('wagtailcore.page',),
        ),
        migrations.CreateModel(
            name='ChairmanPage',
            fields=[
                ('page_ptr', models.OneToOneField(serialize=False, parent_link=True, to='wagtailcore.Page', auto_created=True, primary_key=True)),
                ('subsection_title', models.CharField(help_text='maximum length of 30 characters', max_length=30, default='title goes here')),
                ('subsection_subtitle', models.CharField(help_text='maximum length of 100 characters', max_length=100, default='subtitle goes here')),
                ('chairman_name', models.CharField(help_text='maximum length of 30 characters', max_length=30, default='chairman name goes here')),
                ('chairman_title', models.CharField(help_text='maximum length of 20 characters', max_length=20, default='chairman title goes here')),
                ('body', wagtail.wagtailcore.fields.RichTextField(default='Welcome message of chairman..')),
                ('chairman_image', models.ForeignKey(on_delete=django.db.models.deletion.SET_NULL, help_text='Image size must be 340 x 480 (width x height)', related_name='+', to='wagtailimages.Image', null=True)),
            ],
            options={
                'abstract': False,
            },
            bases=('wagtailcore.page',),
        ),
        migrations.CreateModel(
            name='ContactPage',
            fields=[
                ('page_ptr', models.OneToOneField(serialize=False, parent_link=True, to='wagtailcore.Page', auto_created=True, primary_key=True)),
                ('to_address', models.CharField(help_text='Optional - form submissions will be emailed to this address', max_length=255, blank=True, verbose_name='To address')),
                ('from_address', models.CharField(max_length=255, blank=True, verbose_name='From address')),
                ('subject', models.CharField(max_length=255, blank=True, verbose_name='Subject')),
                ('contact_header', models.CharField(help_text='maximum length of 30 characters', max_length=30, default='Contact Us')),
                ('contact_subheader', models.CharField(help_text='maximum length of 100 characters', max_length=100, default='Fill in the form below to get in touch with us.')),
                ('thank_you_text', models.CharField(help_text='maximum length of 255 characters', max_length=255, default='Thank you for contacting us, We will contact you as soon as possible.')),
            ],
            options={
                'abstract': False,
            },
            bases=('wagtailcore.page',),
        ),
        migrations.CreateModel(
            name='Course',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('course_name', models.CharField(max_length=100)),
            ],
        ),
        migrations.CreateModel(
            name='FacultyPage',
            fields=[
                ('page_ptr', models.OneToOneField(serialize=False, parent_link=True, to='wagtailcore.Page', auto_created=True, primary_key=True)),
                ('subsection_title', models.CharField(help_text='maximum length of 30 characters', max_length=30, default='title goes here')),
                ('subsection_subtitle', models.CharField(help_text='maximum length of 100 characters', max_length=100, default='subtitle goes here')),
                ('tab_title_1', models.CharField(help_text='maximum length of 30 characters', max_length=30, default='tab title goes here')),
                ('tab_title_2', models.CharField(help_text='maximum length of 30 characters', max_length=30, default='tab title goes here')),
            ],
            options={
                'abstract': False,
            },
            bases=('wagtailcore.page',),
        ),
        migrations.CreateModel(
            name='FaithPage',
            fields=[
                ('page_ptr', models.OneToOneField(serialize=False, parent_link=True, to='wagtailcore.Page', auto_created=True, primary_key=True)),
                ('subsection_title', models.CharField(help_text='maximum length of 30 characters', max_length=30, default='title goes here')),
                ('subsection_subtitle', models.CharField(help_text='maximum length of 100 characters', max_length=100, default='subtitle goes here')),
                ('body', wagtail.wagtailcore.fields.RichTextField(default='Contents of State of faith')),
                ('main_image', models.ForeignKey(on_delete=django.db.models.deletion.SET_NULL, help_text='Image size must be 340 x 480 (width x height)', related_name='+', to='wagtailimages.Image', null=True)),
            ],
            options={
                'abstract': False,
            },
            bases=('wagtailcore.page',),
        ),
        migrations.CreateModel(
            name='FormField',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('sort_order', models.IntegerField(null=True, editable=False, blank=True)),
                ('label', models.CharField(help_text='The label of the form field', max_length=255, verbose_name='Label')),
                ('field_type', models.CharField(choices=[('singleline', 'Single line text'), ('multiline', 'Multi-line text'), ('email', 'Email'), ('number', 'Number'), ('url', 'URL'), ('checkbox', 'Checkbox'), ('checkboxes', 'Checkboxes'), ('dropdown', 'Drop down'), ('radio', 'Radio buttons'), ('date', 'Date'), ('datetime', 'Date/time')], max_length=16, verbose_name='Field type')),
                ('required', models.BooleanField(default=True, verbose_name='Required')),
                ('choices', models.CharField(help_text='Comma separated list of choices. Only applicable in checkboxes, radio and dropdown.', max_length=512, blank=True, verbose_name='Choices')),
                ('default_value', models.CharField(help_text='Default value. Comma separated values supported for checkboxes.', max_length=255, blank=True, verbose_name='Default value')),
                ('help_text', models.CharField(max_length=255, blank=True, verbose_name='Help text')),
                ('page', modelcluster.fields.ParentalKey(related_name='form_fields', to='home.ContactPage')),
            ],
            options={
                'ordering': ['sort_order'],
                'abstract': False,
            },
        ),
        migrations.CreateModel(
            name='MissionPage',
            fields=[
                ('page_ptr', models.OneToOneField(serialize=False, parent_link=True, to='wagtailcore.Page', auto_created=True, primary_key=True)),
                ('subsection_title', models.CharField(help_text='maximum length of 30 characters', max_length=30, default='title goes here')),
                ('subsection_subtitle', models.CharField(help_text='maximum length of 100 characters', max_length=100, default='subtitle goes here')),
                ('body', wagtail.wagtailcore.fields.RichTextField(default='Contents of State of mission')),
                ('main_image', models.ForeignKey(on_delete=django.db.models.deletion.SET_NULL, help_text='Image size must be 340 x 480 (width x height)', related_name='+', to='wagtailimages.Image', null=True)),
            ],
            options={
                'abstract': False,
            },
            bases=('wagtailcore.page',),
        ),
        migrations.CreateModel(
            name='PresidentPage',
            fields=[
                ('page_ptr', models.OneToOneField(serialize=False, parent_link=True, to='wagtailcore.Page', auto_created=True, primary_key=True)),
                ('subsection_title', models.CharField(help_text='maximum length of 30 characters', max_length=30, default='title goes here')),
                ('subsection_subtitle', models.CharField(help_text='maximum length of 100 characters', max_length=100, default='subtitle goes here')),
                ('president_name', models.CharField(help_text='maximum length of 30 characters', max_length=30, default='President name goes here')),
                ('president_title', models.CharField(help_text='maximum length of 20 characters', max_length=20, default='President title goes here')),
                ('body', wagtail.wagtailcore.fields.RichTextField(default='Welcome message of president..')),
                ('president_image', models.ForeignKey(on_delete=django.db.models.deletion.SET_NULL, help_text='Image size must be 340 x 480 (width x height)', related_name='+', to='wagtailimages.Image', null=True)),
            ],
            options={
                'abstract': False,
            },
            bases=('wagtailcore.page',),
        ),
        migrations.CreateModel(
            name='Professor',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('professor_name', models.CharField(help_text='Professor name with maximum length of 30 characters', max_length=30, default='Professor Name', verbose_name='Professor Name')),
                ('professor_spec', wagtail.wagtailcore.fields.RichTextField(default='Professor Spec.', verbose_name='Professor Spec')),
                ('course', models.ForeignKey(on_delete=django.db.models.deletion.SET_NULL, related_name='+', to='home.Course', null=True)),
                ('professor_image', models.ForeignKey(on_delete=django.db.models.deletion.SET_NULL, help_text='Picture must be size of 150 x 200 (width x height)', related_name='+', blank=True, to='wagtailimages.Image', null=True)),
            ],
            options={
                'abstract': False,
            },
        ),
        migrations.CreateModel(
            name='StaffPage',
            fields=[
                ('page_ptr', models.OneToOneField(serialize=False, parent_link=True, to='wagtailcore.Page', auto_created=True, primary_key=True)),
                ('subsection_title', models.CharField(help_text='maximum length of 30 characters', max_length=30, default='title goes here')),
                ('subsection_subtitle', models.CharField(help_text='maximum length of 100 characters', max_length=100, default='subtitle goes here')),
                ('first_column_header', models.CharField(help_text='maximum length of 30 characters', max_length=30, default='header goes here')),
                ('first_column_name', models.CharField(help_text='maximum length of 30 characters', max_length=30, default='name goes here')),
                ('first_column_position', models.CharField(help_text='maximum length of 30 characters', max_length=30, default='position goes here')),
                ('first_column_spec', wagtail.wagtailcore.fields.RichTextField(default='Spec')),
                ('second_column_header', models.CharField(help_text='maximum length of 30 characters', max_length=30, default='header goes here')),
                ('second_column_name', models.CharField(help_text='maximum length of 30 characters', max_length=30, default='name goes here')),
                ('second_column_position', models.CharField(help_text='maximum length of 30 characters', max_length=30, default='position goes here')),
                ('second_column_spec', wagtail.wagtailcore.fields.RichTextField(default='Spec')),
                ('third_column_header', models.CharField(help_text='maximum length of 30 characters', max_length=30, default='header goes here')),
                ('third_column_name', models.CharField(help_text='maximum length of 30 characters', max_length=30, default='name goes here')),
                ('third_column_position', models.CharField(help_text='maximum length of 30 characters', max_length=30, default='position goes here')),
                ('fourth_column_header', models.CharField(help_text='maximum length of 30 characters', max_length=30, default='header goes here')),
                ('fourth_column_name', models.CharField(help_text='maximum length of 30 characters', max_length=30, default='name goes here')),
                ('fourth_column_position', models.CharField(help_text='maximum length of 30 characters', max_length=30, default='position goes here')),
                ('fifth_column_header', models.CharField(help_text='maximum length of 30 characters', max_length=30, default='header goes here')),
                ('fifth_column_name', models.CharField(help_text='maximum length of 30 characters', max_length=30, default='name goes here')),
                ('fifth_column_position', models.CharField(help_text='maximum length of 30 characters', max_length=30, default='position goes here')),
                ('fifth_column_image', models.ForeignKey(on_delete=django.db.models.deletion.SET_NULL, help_text='Image size must be 324 x 324 (width x height)', related_name='+', to='wagtailimages.Image', null=True)),
                ('first_column_image', models.ForeignKey(on_delete=django.db.models.deletion.SET_NULL, help_text='Image size must be 324 x 324 (width x height)', related_name='+', to='wagtailimages.Image', null=True)),
                ('fourth_column_image', models.ForeignKey(on_delete=django.db.models.deletion.SET_NULL, help_text='Image size must be 324 x 324 (width x height)', related_name='+', to='wagtailimages.Image', null=True)),
                ('second_column_image', models.ForeignKey(on_delete=django.db.models.deletion.SET_NULL, help_text='Image size must be 324 x 324 (width x height)', related_name='+', to='wagtailimages.Image', null=True)),
                ('third_column_image', models.ForeignKey(on_delete=django.db.models.deletion.SET_NULL, help_text='Image size must be 324 x 324 (width x height)', related_name='+', to='wagtailimages.Image', null=True)),
            ],
            options={
                'abstract': False,
            },
            bases=('wagtailcore.page',),
        ),
        migrations.AddField(
            model_name='homepage',
            name='main_header',
            field=models.CharField(help_text='maximum length of 30 characters', max_length=30, default='our mission'),
        ),
        migrations.AddField(
            model_name='homepage',
            name='main_subheader',
            field=models.CharField(help_text='maximum length of 255 characters', max_length=255, default="mission's description"),
        ),
        migrations.AddField(
            model_name='homepage',
            name='slider1_header1',
            field=models.CharField(help_text='maximum length of 30 characters', max_length=30, default='Welcome to'),
        ),
        migrations.AddField(
            model_name='homepage',
            name='slider1_header2',
            field=models.CharField(help_text='maximum length of 50 characters', max_length=50, default='Tyndale international university'),
        ),
        migrations.AddField(
            model_name='homepage',
            name='slider1_subheader1',
            field=models.CharField(help_text='maximum length of 100 characters', max_length=100, default='The reformed theology based seminary'),
        ),
        migrations.AddField(
            model_name='homepage',
            name='slider2_header1',
            field=models.CharField(help_text='maximum length of 100 characters', max_length=255, default='This displays bible verse'),
        ),
        migrations.AddField(
            model_name='homepage',
            name='slider2_subheader1',
            field=models.CharField(help_text='maximum length of 30 characters', max_length=30, default='romans 5:8'),
        ),
    ]
