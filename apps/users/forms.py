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
        'required': u'验证码必填',
        'invalid': u'验证码无效'
    })


class ForgetPwdForm(forms.Form):
    # 找回密码验证
    email = forms.EmailField(required=True, error_messages={
        'required': u'邮箱必填'
    })
    captcha = CaptchaField(error_messages={
        'required': u'验证码必填',
        'invalid': u'验证码无效'
    })


class ResetPwdForm(forms.Form):
    # 重置密码
    password = forms.CharField(required=True, min_length=6, error_messages={
        'required': u'密码必填',
        'min_length': u'密码不能小于6位数'
    })
    password_again = forms.CharField(required=True, min_length=6, error_messages={
        'required': u'密码必填',
        'min_length': u'密码不能小于6位数'
    })
