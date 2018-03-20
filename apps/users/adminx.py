# -*- coding:utf-8 -*-
__author__ = "YJob"
__date__ = "2018/3/3 15:48"

import xadmin

from xadmin import views

from .models import EmailVerifyCode, Banner


# 开启主题功能
class BaseSetting(object):
    enable_themes = True
    use_bootswatch = True


# 全局配置
class GlobalSettings(object):
    site_title = 'SS管理后台'
    site_footer = 'SSONLINE'
    menu_style = 'accordion'


class EmailVerifyCodeAdmin(object):
    list_display = ['email', 'code', 'send_type', 'send_time']
    search_fields = ['email', 'code', 'send_type']
    list_filter = ['send_type', 'send_time']


class BannerAdmin(object):
    list_display = ['index', 'title', 'add_time', 'url', 'image']
    search_fields = ['title']
    list_filter = ['add_time']


xadmin.site.register(EmailVerifyCode, EmailVerifyCodeAdmin)
xadmin.site.register(Banner, BannerAdmin)
xadmin.site.register(views.BaseAdminView, BaseSetting)
xadmin.site.register(views.CommAdminView, GlobalSettings)
