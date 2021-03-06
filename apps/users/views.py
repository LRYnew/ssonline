from django.shortcuts import render
from django.contrib.auth import authenticate, login
from django.contrib.auth.backends import ModelBackend
from django.db.models import Q
from django.views.generic.base import View
from django.contrib.auth.hashers import make_password

from .models import UserProfile, EmailVerifyCode
from .forms import LoginForm, RegisterForm, ForgetPwdForm, ResetPwdForm
from utils.email_send import email_send


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
                if user.is_active:
                    login(request, user)
                    return render(request, 'index.html', {})
                else:
                    return render(request, 'login.html', {"msg": '用户未激活'})
            else:
                return render(request, 'login.html', {"msg": '用户名或者密码错误'})
        else:
            return render(request, 'login.html', {"login_form": login_form})


class RegisterView(View):
    # 注册类
    def get(self, request):
        register_form = RegisterForm()
        return render(request, 'register.html', {'register_form': register_form})

    def post(self, request):
        register_form = RegisterForm(request.POST)
        if register_form.is_valid():
            email = request.POST.get('email', '')
            password = request.POST.get('password', '')
            is_email = UserProfile.objects.filter(email=email, is_active=1).exists()
            if not is_email:
                user_profile = UserProfile()
                user_profile.username = email
                user_profile.email = email
                user_profile.password = make_password(password)
                user_profile.is_active = False
                user_profile.save()

                email_send(email=email, type='register')

                return render(request, 'login.html')
            else:
                return render(request, 'register.html', {'msg': u'邮箱已经存在', 'register_form': register_form})
        else:
            return render(request, 'register.html', {'register_form': register_form})


class RegisterActiveView(View):
    # 注册激活
    def get(self, request, active_code):
        records = EmailVerifyCode.objects.filter(code=active_code)
        if records.exists():
            for record in records:
                email = record.email
                user = UserProfile.objects.get(email=email)
                user.is_active = True
                user.save()

                return render(request, 'login.html')
        else:
            return render(request, '404.html')


class ForgetPwdView(View):
    # 找回密码
    def get(self, request):
        forget_form = ForgetPwdForm()
        return render(request, 'forgetpwd.html', {'forget_form': forget_form})

    def post(self, request):
        forget_form = ForgetPwdForm(request.POST)
        if forget_form.is_valid():
            email = request.POST.get('email', '')
            is_email = UserProfile.objects.filter(email=email, is_active=True).exists()
            if is_email:
                email_send(email=email, type='forget')

                return render(request, 'login.html')
        else:
            return render(request, 'forgetpwd.html', {'forget_form': forget_form})


class ResetPwdView(View):
    # 重置密码
    def get(self, request, reset_code):
        records = EmailVerifyCode.objects.filter(code=reset_code)
        if records.exists():
            for record in records:
                email = record.email
                return render(request, 'password_reset.html', {'email': email})
        else:
            return render(request, '404.html', {'msg': '验证码无效,请到找回密码页'})


class ModifyPwdView(View):
    # 修改密码
    def post(self, request):
        email = request.POST.get('email', '')
        reset_form = ResetPwdForm(request.POST)
        if reset_form.is_valid():
            email = request.POST.get('email', '')
            password_new = request.POST.get('password', '')
            password_new_again = request.POST.get('password_again', '')

            if password_new == password_new_again:
                user = UserProfile.objects.get(email=email)
                user.password = make_password(password_new)
                user.save()
                return render(request, 'login.html')
            else:
                return render(request, 'password_reset.html', {'email': email, 'msg': '密码不一致'})
        else:
            return render(request, 'password_reset.html', {'email': email, 'reset_form': reset_form})


def user_login(request):
    # 登录函数
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
