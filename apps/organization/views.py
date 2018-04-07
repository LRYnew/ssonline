# -*- coding#utf-8 -*-
from django.shortcuts import render
from django.views.generic.base import View
from pure_pagination import Paginator, EmptyPage, PageNotAnInteger

from .models import CityDict, CourseOrg


class OrgView(View):
    # 课程列表
    def get(self, request):
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
            'host_org': host_org
        })
