# -*- coding:utf-8 -*-
__author__ = "YJob"
__date__ = "2018/3/3 19:08"

import xadmin

from .models import Course, Lesson, Video, CourseResource


class CourseAdmin(object):
    list_display = ['name', 'desc', 'degree', 'students',
                    'learn_time', 'fov_nums', 'click_nums', 'image', 'detail', 'add_time']
    search_fields = ['name', 'desc', 'degree', 'detail']
    list_filter = ['name', 'add_time']


class LessonAdmin(object):
    list_display = ['name', 'course', 'add_time']
    search_fields = ['name', 'course__name']
    list_filter = ['course__name', 'add_time']


class VideoAdmin(object):
    list_display = ['name', 'lesson', 'add_time']
    search_fields = ['name', 'lesson__name']
    list_filter = ['lesson__name', 'add_time']


class CourseResourceAdmin(object):
    list_display = ['name', 'course', 'download', 'add_time']
    search_fields = ['name', 'course__name']
    list_filter = ['course__name', 'add_time']


xadmin.site.register(Course, CourseAdmin)
xadmin.site.register(Lesson, LessonAdmin)
xadmin.site.register(Video, VideoAdmin)
xadmin.site.register(CourseResource, CourseResourceAdmin)