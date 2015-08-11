from __future__ import unicode_literals

from django.db import models
from django.utils.translation import ugettext_lazy as _

from modelcluster.fields import ParentalKey
from wagtail.wagtailadmin.edit_handlers import FieldPanel, InlinePanel, MultiFieldPanel
from wagtail.wagtailcore.fields import RichTextField

from wagtail.wagtailcore.models import Page, Orderable
from wagtail.wagtailforms.models import AbstractFormField, AbstractEmailForm
from wagtail.wagtailimages.edit_handlers import ImageChooserPanel
from wagtail.wagtailsnippets.edit_handlers import SnippetChooserPanel
from wagtail.wagtailsnippets.models import register_snippet


@register_snippet
class Course(models.Model):
    course_name = models.CharField(max_length=100)

    def __str__(self):
        return self.course_name


class AbstractProfessor(models.Model):
    professor_image = models.ForeignKey(
        "wagtailimages.Image",
        blank=True,
        null=True,
        on_delete=models.SET_NULL,
        related_name='+',
        help_text="Picture must be size of 150 x 200 (width x height)"
    )
    professor_name = models.CharField(max_length=30, verbose_name=_('Professor Name'),
                                      help_text="Professor name with maximum length of 30 characters",
                                      default="Professor Name")
    professor_spec = RichTextField(verbose_name=_('Professor Spec'), default="Professor Spec.")

    class Meta:
        abstract = True


@register_snippet
class Professor(AbstractProfessor):
    course = models.ForeignKey(
        "Course",
        blank=False,
        null=True,
        on_delete=models.SET_NULL,
        related_name='+'
    )

    def __str__(self):
        return self.professor_name


@register_snippet
class AdjunctProfessor(AbstractProfessor):

    professor_course = models.CharField(max_length=100, verbose_name=_('Course'),
                                       help_text="Professor title with maximum length of 100 characters")

    def __str__(self):
        return self.professor_name


@register_snippet
class AcademicPrograms(models.Model):
    program_name = models.CharField(max_length=50)
    program_description = RichTextField()

    def __str__(self):
        return self.program_name


class HomePage(Page):
    slider1_header1 = models.CharField(max_length=30,
                                       help_text='maximum length of 30 characters',
                                       default='Welcome to')
    slider1_header2 = models.CharField(max_length=50,
                                       help_text='maximum length of 50 characters',
                                       default='Tyndale international university')
    slider1_subheader1 = models.CharField(max_length=100,
                                          help_text='maximum length of 100 characters',
                                          default='The reformed theology based seminary')

    slider2_header1 = models.CharField(max_length=255,
                                       help_text='maximum length of 100 characters',
                                       default='This displays bible verse')
    slider2_subheader1 = models.CharField(max_length=30,
                                          help_text='maximum length of 30 characters',
                                          default='romans 5:8')

    main_header = models.CharField(max_length=30,
                                   help_text='maximum length of 30 characters',
                                   default='our mission')
    main_subheader = models.CharField(max_length=255,
                                      help_text='maximum length of 255 characters',
                                      default="mission's description")

    content_panels = Page.content_panels + [
        FieldPanel('slider1_header1', classname='full title'),
        FieldPanel('slider1_header2', classname='full title'),
        FieldPanel('slider1_subheader1', classname='full title'),
        FieldPanel('slider2_header1', classname='full title'),
        FieldPanel('slider2_subheader1', classname='full title'),
        FieldPanel('main_header', classname='full title'),
        FieldPanel('main_subheader', classname='full title'),
    ]


class AboutPage(Page):
    subsection_title = models.CharField(max_length=30,
                                        help_text='maximum length of 30 characters',
                                        default='title goes here')
    subsection_subtitle = models.CharField(max_length=100,
                                           help_text='maximum length of 100 characters',
                                           default='subtitle goes here')

    main_image = models.ForeignKey(
        "wagtailimages.Image",
        blank=False,
        null=True,
        on_delete=models.SET_NULL,
        related_name='+',
        help_text="Image size must be 750 x 300 (width x height)"
    )

    body = RichTextField(default="About Tyndale....")

    content_panels = Page.content_panels + [
        FieldPanel('subsection_title', classname='full title'),
        FieldPanel('subsection_subtitle', classname='full title'),
        ImageChooserPanel('main_image'),
        FieldPanel('body', classname='full')

    ]


class PresidentPage(Page):
    subsection_title = models.CharField(max_length=30,
                                        help_text='maximum length of 30 characters',
                                        default='title goes here')
    subsection_subtitle = models.CharField(max_length=100,
                                           help_text='maximum length of 100 characters',
                                           default='subtitle goes here')
    president_image = models.ForeignKey(
        "wagtailimages.Image",
        blank=False,
        null=True,
        on_delete=models.SET_NULL,
        related_name='+',
        help_text="Image size must be 340 x 480 (width x height)"
    )
    president_name = models.CharField(max_length=30,
                                      help_text='maximum length of 30 characters',
                                      default='President name goes here')
    president_title = models.CharField(max_length=20,
                                       help_text='maximum length of 20 characters',
                                       default='President title goes here')
    body = RichTextField(default='Welcome message of president..')

    content_panels = Page.content_panels + [
        FieldPanel('subsection_title', classname='full title'),
        FieldPanel('subsection_subtitle', classname='full title'),
        ImageChooserPanel('president_image'),
        FieldPanel('president_name', classname='full'),
        FieldPanel('president_title', classname='full'),
        FieldPanel('body', classname='full'),

    ]


class ChairmanPage(Page):
    subsection_title = models.CharField(max_length=30,
                                        help_text='maximum length of 30 characters',
                                        default='title goes here')
    subsection_subtitle = models.CharField(max_length=100,
                                           help_text='maximum length of 100 characters',
                                           default='subtitle goes here')
    chairman_image = models.ForeignKey(
        "wagtailimages.Image",
        blank=False,
        null=True,
        on_delete=models.SET_NULL,
        related_name='+',
        help_text="Image size must be 340 x 480 (width x height)"
    )
    chairman_name = models.CharField(max_length=30,
                                      help_text='maximum length of 30 characters',
                                      default='chairman name goes here')
    chairman_title = models.CharField(max_length=20,
                                       help_text='maximum length of 20 characters',
                                       default='chairman title goes here')
    body = RichTextField(default='Welcome message of chairman..')

    content_panels = Page.content_panels + [
        FieldPanel('subsection_title', classname='full title'),
        FieldPanel('subsection_subtitle', classname='full title'),
        ImageChooserPanel('chairman_image'),
        FieldPanel('chairman_name', classname='full'),
        FieldPanel('chairman_title', classname='full'),
        FieldPanel('body', classname='full'),

    ]


class MissionPage(Page):
    subsection_title = models.CharField(max_length=30,
                                        help_text='maximum length of 30 characters',
                                        default='title goes here')
    subsection_subtitle = models.CharField(max_length=100,
                                           help_text='maximum length of 100 characters',
                                           default='subtitle goes here')
    main_image = models.ForeignKey(
        "wagtailimages.Image",
        blank=False,
        null=True,
        on_delete=models.SET_NULL,
        related_name='+',
        help_text="Image size must be 340 x 480 (width x height)"
    )

    body = RichTextField(default='Contents of State of mission')

    content_panels = Page.content_panels + [
        FieldPanel('subsection_title', classname='full title'),
        FieldPanel('subsection_subtitle', classname='full title'),
        ImageChooserPanel('main_image'),
        FieldPanel('body', classname='full'),

    ]


class FaithPage(Page):
    subsection_title = models.CharField(max_length=30,
                                        help_text='maximum length of 30 characters',
                                        default='title goes here')
    subsection_subtitle = models.CharField(max_length=100,
                                           help_text='maximum length of 100 characters',
                                           default='subtitle goes here')
    main_image = models.ForeignKey(
        "wagtailimages.Image",
        blank=False,
        null=True,
        on_delete=models.SET_NULL,
        related_name='+',
        help_text="Image size must be 340 x 480 (width x height)"
    )

    body = RichTextField(default='Contents of State of faith')

    content_panels = Page.content_panels + [
        FieldPanel('subsection_title', classname='full title'),
        FieldPanel('subsection_subtitle', classname='full title'),
        ImageChooserPanel('main_image'),
        FieldPanel('body', classname='full'),

    ]


class StaffPage(Page):
    subsection_title = models.CharField(max_length=30,
                                        help_text='maximum length of 30 characters',
                                        default='title goes here')
    subsection_subtitle = models.CharField(max_length=100,
                                           help_text='maximum length of 100 characters',
                                           default='subtitle goes here')

    first_column_header = models.CharField(max_length=30,
                                           help_text='maximum length of 30 characters',
                                           default='header goes here')
    first_column_image = models.ForeignKey(
        "wagtailimages.Image",
        blank=False,
        null=True,
        on_delete=models.SET_NULL,
        related_name='+',
        help_text="Image size must be 324 x 324 (width x height)"
    )

    first_column_name = models.CharField(max_length=30,
                                           help_text='maximum length of 30 characters',
                                           default='name goes here')
    first_column_position = models.CharField(max_length=30,
                                           help_text='maximum length of 30 characters',
                                           default='position goes here')
    first_column_spec = RichTextField(default='Spec')

    second_column_header = models.CharField(max_length=30,
                                           help_text='maximum length of 30 characters',
                                           default='header goes here')
    second_column_image = models.ForeignKey(
        "wagtailimages.Image",
        blank=False,
        null=True,
        on_delete=models.SET_NULL,
        related_name='+',
        help_text="Image size must be 324 x 324 (width x height)"
    )

    second_column_name = models.CharField(max_length=30,
                                           help_text='maximum length of 30 characters',
                                           default='name goes here')
    second_column_position = models.CharField(max_length=30,
                                           help_text='maximum length of 30 characters',
                                           default='position goes here')
    second_column_spec = RichTextField(default='Spec')

    third_column_header = models.CharField(max_length=30,
                                           help_text='maximum length of 30 characters',
                                           default='header goes here')
    third_column_image = models.ForeignKey(
        "wagtailimages.Image",
        blank=False,
        null=True,
        on_delete=models.SET_NULL,
        related_name='+',
        help_text="Image size must be 324 x 324 (width x height)"
    )

    third_column_name = models.CharField(max_length=30,
                                           help_text='maximum length of 30 characters',
                                           default='name goes here')
    third_column_position = models.CharField(max_length=30,
                                           help_text='maximum length of 30 characters',
                                           default='position goes here')

    fourth_column_header = models.CharField(max_length=30,
                                           help_text='maximum length of 30 characters',
                                           default='header goes here')
    fourth_column_image = models.ForeignKey(
        "wagtailimages.Image",
        blank=False,
        null=True,
        on_delete=models.SET_NULL,
        related_name='+',
        help_text="Image size must be 324 x 324 (width x height)"
    )

    fourth_column_name = models.CharField(max_length=30,
                                           help_text='maximum length of 30 characters',
                                           default='name goes here')
    fourth_column_position = models.CharField(max_length=30,
                                           help_text='maximum length of 30 characters',
                                           default='position goes here')

    fifth_column_header = models.CharField(max_length=30,
                                           help_text='maximum length of 30 characters',
                                           default='header goes here')
    fifth_column_image = models.ForeignKey(
        "wagtailimages.Image",
        blank=False,
        null=True,
        on_delete=models.SET_NULL,
        related_name='+',
        help_text="Image size must be 324 x 324 (width x height)"
    )

    fifth_column_name = models.CharField(max_length=30,
                                           help_text='maximum length of 30 characters',
                                           default='name goes here')
    fifth_column_position = models.CharField(max_length=30,
                                           help_text='maximum length of 30 characters',
                                           default='position goes here')

    content_panels = Page.content_panels + [
        FieldPanel('subsection_title', classname='full title'),
        FieldPanel('subsection_subtitle', classname='full title'),

        FieldPanel('first_column_header', classname='full'),
        ImageChooserPanel('first_column_image'),
        FieldPanel('first_column_name', classname='full'),
        FieldPanel('first_column_position', classname='full'),
        FieldPanel('first_column_spec', classname='full'),

        FieldPanel('second_column_header', classname='full'),
        ImageChooserPanel('second_column_image'),
        FieldPanel('second_column_name', classname='full'),
        FieldPanel('second_column_position', classname='full'),
        FieldPanel('second_column_spec', classname='full'),

        FieldPanel('third_column_header', classname='full'),
        ImageChooserPanel('third_column_image'),
        FieldPanel('third_column_name', classname='full'),
        FieldPanel('third_column_position', classname='full'),

        FieldPanel('fourth_column_header', classname='full'),
        ImageChooserPanel('fourth_column_image'),
        FieldPanel('fourth_column_name', classname='full'),
        FieldPanel('fourth_column_position', classname='full'),

        FieldPanel('fifth_column_header', classname='full'),
        ImageChooserPanel('fifth_column_image'),
        FieldPanel('fifth_column_name', classname='full'),
        FieldPanel('fifth_column_position', classname='full'),


    ]


class AcademicPage(Page):
    subsection_title = models.CharField(max_length=30,
                                        help_text='maximum length of 30 characters',
                                        default='title goes here')
    subsection_subtitle = models.CharField(max_length=100,
                                           help_text='maximum length of 100 characters',
                                           default='subtitle goes here')

    main_image = models.ForeignKey(
        "wagtailimages.Image",
        blank=False,
        null=True,
        on_delete=models.SET_NULL,
        related_name='+',
        help_text="Image size must be 750 x 300 (width x height)"
    )

    body = RichTextField(default="Academics....")

    content_panels = Page.content_panels + [
        FieldPanel('subsection_title', classname='full title'),
        FieldPanel('subsection_subtitle', classname='full title'),
        ImageChooserPanel('main_image'),
        FieldPanel('body', classname='full')

    ]


class AcademicProgramPage(Page):
    subsection_title = models.CharField(max_length=30,
                                        help_text='maximum length of 30 characters',
                                        default='title goes here')
    subsection_subtitle = models.CharField(max_length=100,
                                           help_text='maximum length of 100 characters',
                                           default='subtitle goes here')
    @property
    def programs(self):
        programs = AcademicPrograms.objects.all()
        programs = programs.order_by('program_name')

        return programs

    content_panels = Page.content_panels + [
        FieldPanel('subsection_title', classname='full title'),
        FieldPanel('subsection_subtitle', classname='full title'),

    ]


class AdmissionPage(Page):
    subsection_title = models.CharField(max_length=30,
                                        help_text='maximum length of 30 characters',
                                        default='title goes here')
    subsection_subtitle = models.CharField(max_length=100,
                                           help_text='maximum length of 100 characters',
                                           default='subtitle goes here')

    main_image = models.ForeignKey(
        "wagtailimages.Image",
        blank=False,
        null=True,
        on_delete=models.SET_NULL,
        related_name='+',
        help_text="Image size must be 750 x 300 (width x height)"
    )

    body = RichTextField(default="About admission....")

    content_panels = Page.content_panels + [
        FieldPanel('subsection_title', classname='full title'),
        FieldPanel('subsection_subtitle', classname='full title'),
        ImageChooserPanel('main_image'),
        FieldPanel('body', classname='full')

    ]


class FormField(AbstractFormField):
    page = ParentalKey('ContactPage', related_name='form_fields')


class ContactPage(AbstractEmailForm):

    contact_header = models.CharField(max_length=30,
                                      help_text='maximum length of 30 characters',
                                      default='Contact Us')
    contact_subheader = models.CharField(max_length=100,
                                         help_text='maximum length of 100 characters',
                                         default='Fill in the form below to get in touch with us.')
    thank_you_text = models.CharField(max_length=255,
                                      help_text='maximum length of 255 characters',
                                      default='Thank you for contacting us, We will contact you as soon as possible.')

ContactPage.content_panels = [
    FieldPanel('title', classname="full title"),
    FieldPanel('contact_header', classname='full'),
    FieldPanel('contact_subheader', classname='full'),
    FieldPanel('thank_you_text', classname='full'),
    InlinePanel('form_fields', label='Form fields'),
    MultiFieldPanel([
        FieldPanel('to_address', classname='full'),
        FieldPanel('from_address', classname='full'),
        FieldPanel('subject', classname='full'),

    ], "Email")
]



class FacultyPage(Page):
    subsection_title = models.CharField(max_length=30,
                                        help_text='maximum length of 30 characters',
                                        default='title goes here')
    subsection_subtitle = models.CharField(max_length=100,
                                           help_text='maximum length of 100 characters',
                                           default='subtitle goes here')
    tab_title_1 = models.CharField(max_length=30,
                                   help_text='maximum length of 30 characters',
                                   default='tab title goes here')
    tab_title_2 = models.CharField(max_length=30,
                                   help_text='maximum length of 30 characters',
                                   default='tab title goes here')

    @property
    def courses(self):
        courses = Course.objects.all()
        return courses

    @property
    def professors(self):
        professors = Professor.objects.all()
        return professors

    @property
    def adjunct_professors(self):
        adjunct_professors = AdjunctProfessor.objects.all()
        return adjunct_professors

    content_panels = Page.content_panels + [
        FieldPanel('subsection_title', classname='full title'),
        FieldPanel('subsection_subtitle', classname='full title'),
        FieldPanel('tab_title_1', classname='full'),
        FieldPanel('tab_title_2', classname='full'),

    ]





















