# -*- coding:utf-8 -*-
__author__ = 'YJob'
__date__ = '2018/3/29 15:38'

from random import Random

from ssonline.settings import DEFAULT_FROM_EMAIL
from django.core.mail import send_mail

from users.models import EmailVerifyCode


def random_str(random_length):
    str = ''
    chars = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz0123456789'
    length = len(chars) - 1
    random = Random()
    for i in range(random_length):
        str += chars[random.randint(0, length)]
    return str


def email_send(email, type='register'):
    # 邮件发送函数
    code = random_str(16)
    email_record = EmailVerifyCode()
    email_record.code = code
    email_record.email = email
    email_record.send_type = type
    email_record.save()

    email_title = ''
    email_body = ''

    if type == 'register':
        # 注册
        email_title = 'ss在线教育平台注册'
        email_body = '请点击链接进行激活: http://127.0.0.1:8000/active/{0}'.format(code)

        email_status = send_mail(email_title, email_body, DEFAULT_FROM_EMAIL, [email])
        if email_status:
            pass
    elif type == 'forget':
        # 找回密码
        email_title = 'ss在线教育平台密码招呼'
        email_body = '请点击链接进行密码找回: http://127.0.0.1:8000/reset/{0}'.format(code)

        email_status = send_mail(email_title, email_body, DEFAULT_FROM_EMAIL, [email])
        if email_status:
            pass
