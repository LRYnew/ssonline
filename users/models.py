# -*- coding:utf-8 -*-

from django.db import models
from django.contrib.auth.models import AbstractUser
# Create your models here.


# 用户资料类
class UserProfile(AbstractUser):
    nick_name = models.CharField(max_length=50, verbose_name=u'昵称', default=u'')
    birthday = models.DateField(verbose_name=u'生日', null=True, blank=True)
    gender = models.CharField(max_length=5,choices=(('0',u'男'),('1',u'女')),default=1)
    address = models.CharField(max_length=100,default=u'')
    mobile = models.CharField(max_length=11,null=True,blank=True)
    image = models.ImageField(max_length=100,upload_to='image/%Y/%m', default=u'image/default.png')

    class Meta:
        verbose_name = u'用户信息'
        verbose_name_plural = verbose_name

    # 定义__str__让输出数据格式化，python2 为 __unicode__(self)
    def __str__(self):
        return self.username
