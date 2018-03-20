# -*- coding:utf-8 -*-
__author__ = "YJob"
__date__ = "2018/3/3 21:38"

import xadmin

from .models import CityDict, CourseOrg, Teacher


class CityDichAdmin(object):
    list_display = ['name', 'desc', 'add_time']
    search_fields = ['name', 'desc']
    list_filter = ['add_time']


class CourseOrgAdmin(object):
    list_display = ['name', 'desc', 'city', 'address', 'click_nums', 'fov_nums', 'add_time', 'image']
    search_fields = ['name', 'desc', 'city', 'address']
    list_filter = ['name', 'city__name', 'add_time']


class TeacherAdmin(object):
    list_display = ['name', 'org', 'age', 'work_years',
                    'work_position', 'points', 'fov_nums', 'click_nums', 'add_time', 'image']
    search_fields = ['name', 'org', 'age', 'work_years', 'work_position']
    list_filter = ['org__name', 'age', 'work_years', 'add_time']


xadmin.site.register(CityDict, CityDichAdmin)
xadmin.site.register(CourseOrg, CourseOrgAdmin)
xadmin.site.register(Teacher, TeacherAdmin)
