from django.test import TestCase
from .models import Course, Professor


class TestSnippet(TestCase):

    def test_return_courses(self):
        Course.objects.create(course_name="course1").save()
        Course.objects.create(course_name="course2").save()
        courses = Course.objects.all()
        self.assertEqual(courses.count(), 2)

