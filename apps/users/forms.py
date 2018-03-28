# -*- coding:utf-8 -*-
__author__ = "YJob"
__date__ = "2018/3/10 21:57"
from django import forms
from captcha.fields import CaptchaField


class LoginForm(forms.Form):
    # 登录验证
    username = forms.CharField(required=True, error_messages={
        'required': u'用户名必填'
    })
    password = forms.CharField(required=True, min_length=6, error_messages={
        'required': u'密码必填',
        'min_length': u'密码不能小于6位数'
    })


class RegisterForm(forms.Form):
    # 注册验证
    email = forms.EmailField(required=True, error_messages={
        'required': u'邮箱必填'
    })
    password = forms.CharField(required=True, min_length=6, error_messages={
        'required': u'密码必填',
        'min_length': u'密码不能小于6位数'
    })
    captcha = CaptchaField(error_messages={
        'invalid': u'验证码无效'
    })
