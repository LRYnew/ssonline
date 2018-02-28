# -*- coding:utf-8 -*-
from datetime import datetime

from django.db import models

from users.models import UserProfile
from courses.models import Course


class UserAsk(models.Model):
    '''
    咨询类
    '''
    name = models.CharField(verbose_name=u'姓名', max_length=20)
    mobile = models.CharField(verbose_name=u'手机', max_length=11)
    course_name = models.CharField(verbose_name=u'课程名称', max_length=50)
    add_time = models.CharField(verbose_name=u'添加时间', default=datetime.now)

    class Meta:
        verbose_name = u'用户咨询'
        verbose_name_plural = verbose_name


class CourseComments(models.Model):
    '''
    评论类
    '''
    user = models.ForeignKey(UserProfile, verbose_name=u'用户')
    course = models.ForeignKey(Course, verbose_name=u'课程')
    comments = models.CharField(verbose_name=u'评论内容', max_length=200)
    add_time = models.DateTimeField(verbose_name=u'添加时间', default=datetime.now)

    class Meta:
        verbose_name = u'用户评论'
        verbose_name_plural = verbose_name


class UserFavorite(models.Model):
    '''
    收藏类
    '''
    user = models.ForeignKey(UserProfile, verbose_name=u'用户')
    fav_id = models.IntegerField(verbose_name=u'数据id', default=0)
    fav_type = models.IntegerField(verbose_name=u'收藏类型', default=1, choices=((1, '课程'), (2, '机构'), (3, '讲师')))
    add_time = models.DateTimeField(verbose_name=u'添加时间', default=datetime.now)

    class Meta:
        verbose_name = u'用户收藏'
        verbose_name_plural = verbose_name


class UserMessage(models.Model):
    '''
    消息
    '''
    user = models.IntegerField(verbose_name=u'接收用户', default=0)
    message = models.CharField(verbose_name=u'消息', max_length=500)
    has_read = models.BooleanField(verbose_name=u'是否读取', default=False)
    add_time = models.DateTimeField(verbose_name=u'添加时间', default=datetime.now)

    class Meta:
        verbose_name = u'用户消息'
        verbose_name_plural = verbose_name


class UserCourse(models.Model):
    '''
    用户学习的课程
    '''
    user = models.ForeignKey(UserProfile, verbose_name=u'用户')
    course = models.ForeignKey(Course, verbose_name=u'课程')
    add_time = models.DateTimeField(verbose_name=u'添加时间', default=datetime.now)

    class Meta:
        verbose_name = u'用户课程'
        verbose_name_plural = verbose_name
