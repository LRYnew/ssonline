# -*- coding#utf-8 -*-
import json

from django.shortcuts import render
from django.views.generic.base import View
from pure_pagination import Paginator, EmptyPage, PageNotAnInteger
from django.http import HttpResponse

from .models import CityDict, CourseOrg
from .forms import UserAskForm
from operation.models import UserFavorite


class OrgView(View):
    # 课程列表
    def get(self, request):
        current_page = 'org'
        all_city = CityDict.objects.all()
        all_org = CourseOrg.objects.all()

        # 排名
        host_org = all_org.order_by('-click_nums')[:3]

        # 类别筛选
        category = request.GET.get('ct')
        if category:
            all_org = all_org.filter(category=category)
        else:
            category = ''

        # 城市筛选
        city = request.GET.get('city')
        if city:
            all_org = all_org.filter(city_id=city)
        else:
            city = ''

        # 排序方式
        sort = request.GET.get('sort')
        if sort == 'study':
            all_org = all_org.order_by('-study_nums')
        elif sort == 'courses':
            all_org = all_org.order_by('-course_nums')
        else:
            sort = ''

        # 对课程机构进行分页
        try:
            page = request.GET.get('page', 1)
        except PageNotAnInteger:
            page = 1
        # 每页显示数
        p = Paginator(all_org, 5, request=request)
        orgs = p.page(page)

        # 结构个数
        all_count = all_org.count()

        return render(request, 'org-list.html', {
            'all_city': all_city,
            'all_org': orgs,
            'all_count': all_count,
            'city': city,
            'category': category,
            'sort': sort,
            'host_org': host_org,
            'current_page': current_page
        })


class AddUserAskView(View):
    # 添加咨询
    def post(self, request):
        user_ask_form = UserAskForm(request.POST)
        if user_ask_form.is_valid():
            user_ask = user_ask_form.save(commit=True)
            return HttpResponse('{"status": "success"}', content_type='application/json')
        else:
            # return HttpResponse(json.dumps('{"status": "fail", "msg":{0}}'.format(user_ask_form.errors)),
            #                     content_type='application/json')
            return HttpResponse('{"status": "fail", "msg":"添加错误"}',
                                content_type='application/json')


class OrgHomeView(View):
    # 机构首页
    def get(self, request, org_id):
        has_fav = False
        current_page = 'home'
        course_org = CourseOrg.objects.get(id=int(org_id))
        all_course = course_org.course_set.all()[:4]
        all_teacher = course_org.teacher_set.all()[:1]

        if request.user.is_authenticated():
            if UserFavorite.objects.filter(user=request.user, fav_id=course_org.id, fav_type=2):
                has_fav = True

        return render(request, 'org-detail-homepage.html', {
            'all_course': all_course,
            'all_teacher': all_teacher,
            'course_org': course_org,
            'current_page': current_page,
            'has_fav': has_fav
        })


class OrgCourseView(View):
    # 机构课程
    def get(self, request, org_id):
        current_page = 'course'
        has_fav = False
        course_org = CourseOrg.objects.get(id=int(org_id))
        all_course = course_org.course_set.all()

        try:
            page = request.GET.get('page', 1)
        except PageNotAnInteger:
            page = 1
        p = Paginator(all_course, 3, request=request)

        all_course = p.page(page)

        if request.user.is_authenticated():
            if UserFavorite.objects.filter(user=request.user, fav_id=course_org.id, fav_type=2):
                has_fav = True

        return render(request, 'org-detail-course.html', {
            'all_course': all_course,
            'course_org': course_org,
            'current_page': current_page,
            'has_fav': has_fav
        })


class OrgDescView(View):
    # 机构介绍
    def get(self, request, org_id):
        current_page = 'desc'
        has_fav = False
        course_org = CourseOrg.objects.get(id=int(org_id))

        if request.user.is_authenticated():
            if UserFavorite.objects.filter(user=request.user, fav_id=course_org.id, fav_type=2):
                has_fav = True

        return render(request, 'org-detail-desc.html', {
            'course_org': course_org,
            'current_page': current_page,
            'has_fav': has_fav
        })


class OrgTeacherView(View):
    # 机构介绍
    def get(self, request, org_id):
        current_page = 'teacher'
        has_fav = False
        course_org = CourseOrg.objects.get(id=int(org_id))
        all_teacher = course_org.teacher_set.all()

        if request.user.is_authenticated():
            if UserFavorite.objects.filter(user=request.user, fav_id=course_org.id, fav_type=2):
                has_fav = True

        return render(request, 'org-detail-teachers.html', {
            'course_org': course_org,
            'all_teacher': all_teacher,
            'current_page': current_page,
            'has_fav': has_fav
        })


class AddFavView(View):
    # 机构收藏操作
    def post(self, request):
        fav_id = request.POST.get('fav_id', 0)
        fav_type = request.POST.get('fav_type', 0)
        if request.user.is_authenticated():
            fav = UserFavorite.objects.filter(user=request.user, fav_id=int(fav_id), fav_type=int(fav_type))
            if not fav:
                fav = UserFavorite()
                fav.user = request.user
                fav.fav_id = fav_id
                fav.fav_type = fav_type
                fav.save()
                return HttpResponse('{"status":"success","msg":"已收藏"}', content_type='application/json')
            else:
                fav.delete()
                return HttpResponse('{"status":"success","msg":"收藏"}', content_type='application/json')
        else:
            return HttpResponse('{"status":"fail","msg":"用户未登录"}', content_type='application/json')
