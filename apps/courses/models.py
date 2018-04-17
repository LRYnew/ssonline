# -*- coding:utf-8 -*-
from datetime import datetime

from django.db import models

from organization.models import CourseOrg, Teacher


# 课程类
class Course(models.Model):
    course_org = models.ForeignKey(CourseOrg, verbose_name=u'机构', null=True, blank=True)
    teacher = models.ForeignKey(Teacher, verbose_name=u'授课教师', null=True, blank=True)
    name = models.CharField(verbose_name=u'课程名', max_length=20)
    desc = models.CharField(verbose_name=u'课程描述', max_length=150)
    degree = models.CharField(verbose_name=u'难度等级', max_length=10,
                              choices=(('cj', u'初级'), ('zj', u'中级'), ('gj', u'高级')))
    students = models.IntegerField(verbose_name=u'学习人数', default=0)
    learn_time = models.IntegerField(verbose_name=u'时长(分钟数)', default=0)
    fov_nums = models.IntegerField(verbose_name=u'收藏数', default=0)
    click_nums = models.IntegerField(verbose_name=u'点击数', default=0)
    image = models.ImageField(verbose_name=u'封面', upload_to='courses/%Y/%m', max_length=100)
    category = models.CharField(verbose_name=u'课程类别', max_length=100, default=u'后端开发')
    tag = models.CharField(verbose_name=u'课程标签', max_length=100, default='')
    # 课程详情为富文本形式
    detail = models.TextField(verbose_name=u'课程详情')
    add_time = models.DateTimeField(verbose_name=u'添加时间', default=datetime.now)

    class Meta:
        verbose_name = '课程信息'
        verbose_name_plural = verbose_name

    def get_zj_nums(self):
        # 章节
        return self.lesson_set.all().count()

    def get_learn_user(self):
        # 学习用户
        return self.usercourse_set.all()[:5]

    def __str__(self):
        return self.name


# 章节类
class Lesson(models.Model):
    course = models.ForeignKey(Course, verbose_name=u'所属课程')
    name = models.CharField(verbose_name=u'章节名', max_length=100)
    add_time = models.DateTimeField(verbose_name=u'添加时间', default=datetime.now)

    class Meta:
        verbose_name = u'章节'
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.name
    

# 视频类
class Video(models.Model):
    lesson = models.ForeignKey(Lesson, verbose_name=u'章节')
    name = models.CharField(verbose_name=u'视频标题', max_length=100)
    add_time = models.DateTimeField(verbose_name=u'添加时间', default=datetime.now)

    class Meta:
        verbose_name = u'视频'
        verbose_name_plural = verbose_name


# 资源类
class CourseResource(models.Model):
    course = models.ForeignKey(Course, verbose_name=u'所属课程')
    name = models.CharField(verbose_name=u'资源名称', max_length=100)
    download = models.FileField(verbose_name=u'下载资源', upload_to='course/resource/%Y/%m', max_length=100)
    add_time = models.DateTimeField(verbose_name=u'添加时间', default=datetime.now)

    class Meta:
        verbose_name = u'课程资源'
        verbose_name_plural = verbose_name
