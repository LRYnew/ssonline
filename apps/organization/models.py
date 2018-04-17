# -*- coding:utf-8 -*-
from datetime import datetime

from django.db import models


# 城市类
class CityDict(models.Model):
    name = models.CharField(verbose_name=u'城市', max_length=50)
    desc = models.CharField(verbose_name=u'城市描述', max_length=200, null=True, blank=True)
    add_time = models.DateTimeField(verbose_name=u'添加时间', default=datetime.now)

    class Meta:
        verbose_name = u'城市信息'
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.name


class CourseOrg(models.Model):
    city = models.ForeignKey(CityDict, verbose_name=u'所属城市')
    name = models.CharField(verbose_name=u'机构名称', max_length=50)
    category = models.CharField(verbose_name=u'机构类别', max_length=10, default='pxjg',
                                choices=(('pxjg', '培训机构'), ('gx', '高校'), ('gr', '个人')))
    desc = models.TextField(verbose_name=u'机构描述')
    address = models.CharField(verbose_name=u'机构地址', max_length=200)
    click_nums = models.IntegerField(verbose_name=u'点击数', default=0)
    fov_nums = models.IntegerField(verbose_name=u'收藏数', default=0)
    study_nums = models.IntegerField(verbose_name=u'学习人数', default=0)
    course_nums = models.IntegerField(verbose_name=u'课程数', default=0)
    image = models.ImageField(verbose_name=u'封面', upload_to='org/%Y/%m', max_length=200)
    add_time = models.DateTimeField(verbose_name=u'添加时间', default=datetime.now)

    class Meta:
        verbose_name = u'课程机构'
        verbose_name_plural = verbose_name

    def get_teacher_nums(self):
        return self.teacher_set.all().count()

    def __str__(self):
        return self.name


class Teacher(models.Model):
    org = models.ForeignKey(CourseOrg, verbose_name=u'所属机构')
    name = models.CharField(verbose_name=u'教师姓名', max_length=10)
    age = models.IntegerField(verbose_name=u'年龄', null=True, blank=True)
    work_years = models.IntegerField(verbose_name=u'工作年限', default=1)
    work_position = models.CharField(verbose_name=u'职位', max_length=20)
    points = models.CharField(verbose_name=u'教学特点', max_length=100)
    fov_nums = models.IntegerField(verbose_name=u'收藏数', default=0)
    click_nums = models.IntegerField(verbose_name=u'点击数', default=0)
    image = models.ImageField(verbose_name=u'头像', upload_to='teacher/%Y/%m', max_length=100)
    add_time = models.DateTimeField(verbose_name=u'添加时间', default=datetime.now)

    class Meta:
        verbose_name = u'授课教师'
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.name
