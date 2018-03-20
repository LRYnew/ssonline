# -*- coding:utf-8 -*-
__author__ = "YJob"
__date__ = "2018/3/10 21:57"
from django import forms


class LoginForm(forms.Form):
    username = forms.CharField(required=True, error_messages={
        'required': '用户名必填'
    })
    password = forms.CharField(required=True, min_length=6, error_messages={
        'required': '密码必填',
        'min_length': '密码不能小于6位数'
    })
