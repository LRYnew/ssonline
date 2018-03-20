from django.shortcuts import render
from django.contrib.auth import authenticate, login
from django.contrib.auth.backends import ModelBackend
from django.db.models import Q
from django.views.generic.base import View

from .models import UserProfile
from .forms import LoginForm


# Create your views here.
class CustomBackend(ModelBackend):
    # 重写authenticate方法
    def authenticate(self, username=None, password=None, **kwargs):
        try:
            # get 只取一个数据有多余数据报错
            user = UserProfile.objects.get(Q(username=username) | Q(email=username))
            if user.check_password(password):
                return user
            else:
                return None
        except Exception as e:
            return None


class LoginView(View):
    # 登录类
    # 响应 get 请求
    def get(self, request):
        return render(request, 'login.html', {})

    # 响应 post 请求
    def post(self, request):
        login_form = LoginForm(request.POST)
        if login_form.is_valid():
            username = request.POST.get('username', '')
            password = request.POST.get('password', '')
            user = authenticate(username=username, password=password)
            if user is not None:
                login(request, user)
                return render(request, 'index.html', {})
            else:
                return render(request, 'login.html', {"msg": '用户名或者密码错误'})
        else:
            return render(request, 'login.html', {"login_form": login_form})


# 登录函数
def user_login(request):
    if request.method == 'POST':
        username = request.POST.get('username', '')
        password = request.POST.get('password', '')
        # authenticate: django自带验证方法，返回user对象
        user = authenticate(username=username, password=password)
        if user is not None:
            # login: django自带登录方法, 验证通过后在执行登录, user会写进request
            login(request, user)
            return render(request, 'index.html', {})
        else:
            return render(request, 'login.html', {"msg": '用户名或者密码错误'})
    elif request.method == 'GET':
        return render(request, 'login.html', {})
