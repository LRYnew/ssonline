# -*- coding#utf-8 -*-
from django.shortcuts import render
from django.views.generic.base import View


class OrgView(View):
    # 课程列表
    def get(self, request):
        return render(request, 'org-list.html', {})
