# -*- coding:utf-8 -*-
from datetime import datetime

from django.db import models
from django.contrib.auth.models import AbstractUser


# Create your models here.


# 用户资料类
class UserProfile(AbstractUser):
    nick_name = models.CharField(max_length=50, verbose_name=u'昵称', default=u'')
    birthday = models.DateField(verbose_name=u'生日', null=True, blank=True)
    gender = models.CharField(max_length=5, choices=(('0', u'男'), ('1', u'女')), default='1', verbose_name=u'性别')
    address = models.CharField(max_length=100, default=u'', verbose_name=u'区域')
    mobile = models.CharField(max_length=11, null=True, blank=True, verbose_name=u'手机号')
    image = models.ImageField(max_length=100, upload_to='image/%Y/%m', default=u'image/default.png', verbose_name=u'头像')

    class Meta:
        verbose_name = u'用户信息'
        verbose_name_plural = verbose_name

    # 定义__str__让输出数据格式化，python2 为 __unicode__(self)
    def __str__(self):
        return self.username


# 邮箱验证码
class EmailVerifyCode(models.Model):
    code = models.CharField(verbose_name=u'验证码', max_length=50)
    email = models.EmailField(verbose_name=u'验证邮箱', max_length=100)
    send_type = models.CharField(verbose_name=u'验证类别', max_length=10,
                                 choices=(('register', u'注册'), ('forget', u'找回密码')))
    # datetime.now 不添加括号，不然会添加模型创建的时间。不添加括号，时间会添加实例化时时间
    send_time = models.DateTimeField(verbose_name=u'发送时间', default=datetime.now)

    class Meta:
        verbose_name = u'邮箱验证'
        verbose_name_plural = verbose_name

    def __str__(self):
        return '{0}({1})'.format(self.email, self.code)


# 轮播图
class Banner(models.Model):
    title = models.CharField(verbose_name=u'标题', max_length=100)
    image = models.ImageField(verbose_name=u'轮播图', upload_to='banner/%Y/%m', max_length=100)
    url = models.URLField(verbose_name=u'链接', max_length=200)
    index = models.IntegerField(verbose_name=u'排序', default=500)
    add_time = models.DateTimeField(verbose_name=u'添加时间', default=datetime.now)

    class Meta:
        verbose_name = u'轮播图'
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.title
