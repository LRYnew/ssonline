# -*- coding:utf-8 -*-
__author__ = "YJob"
__date__ = "2018/4/8 20:35"
from django.conf.urls import url

from .views import CourseListView

urlpatterns = [
    url(r'^list/$', CourseListView.as_view(), name='list'),
]
