"""ssonline URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/1.11/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  url(r'^$', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  url(r'^$', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.conf.urls import url, include
    2. Add a URL to urlpatterns:  url(r'^blog/', include('blog.urls'))
"""
import xadmin

from django import views
from django.conf.urls import url, include
from django.views.generic import TemplateView

from .settings import MEDIA_ROOT
from users.views import LoginView, RegisterView, RegisterActiveView, ForgetPwdView, ResetPwdView, ModifyPwdView
from organization.views import OrgView

urlpatterns = [
    url(r'^xadmin/', xadmin.site.urls),
    # 上传文件显示路径
    url(r'^media/(?P<path>.*)$', views.static.serve, {'document_root': MEDIA_ROOT}),
    # 静态html模板
    url(r'^$', TemplateView.as_view(template_name='index.html'), name='index'),
    url(r'^login/$', LoginView.as_view(), name='login'),
    url(r'^register/$', RegisterView.as_view(), name='register'),
    url(r'^captcha/', include('captcha.urls')),
    url(r'^active/(?P<active_code>.*)/$', RegisterActiveView.as_view(), name='register_active'),
    url(r'^forget/$', ForgetPwdView.as_view(), name='forget_pwd'),
    url(r'^reset/(?P<reset_code>.*)/$', ResetPwdView.as_view(), name='reset_pwd'),
    url(r'^modify/$', ModifyPwdView.as_view(), name='modify_pwd'),

    # 机构
    url(r'^org_list/$', OrgView.as_view(), name='org_list'),

    # 教师
    url(r'^teachers_list', TemplateView.as_view(template_name='teachers-list.html'), name='teachers_list'),
    # 公开课
    url(r'^course_list', TemplateView.as_view(template_name='course-list.html'), name='course_list'),
]
