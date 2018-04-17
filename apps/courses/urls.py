# -*- coding:utf-8 -*-
__author__ = "YJob"
__date__ = "2018/4/8 20:35"
from django.conf.urls import url

from .views import CourseListView, CourseDetailView
from organization.views import AddFavView

urlpatterns = [
    # 列表页
    url(r'^list/$', CourseListView.as_view(), name='list'),

    # 详情页
    url(r'^detail/(?P<course_id>\d+)/$', CourseDetailView.as_view(), name='detail'),

    # 机构收藏
    url(r'^add_fav/$', AddFavView.as_view(), name='add_fav')
]
