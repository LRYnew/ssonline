from django.shortcuts import render
from django.views import View

from pure_pagination import PageNotAnInteger, EmptyPage, Paginator
from .models import Course


class CourseListView(View):
    # 课程列表
    def get(self, request):
        current_page = 'course'
        all_course = Course.objects.all()

        sort = request.GET.get('sort')
        if sort == 'hot':
            all_course = all_course.order_by('-click_nums')
        elif sort == 'students':
            all_course = all_course.order_by('-students')
        else:
            sort = ''

        # 热门排行
        host_course = all_course.order_by('-click_nums')[:3]

        # 课程分页
        try:
            page = request.GET.get('page', 1)
        except PageNotAnInteger:
            page = 1

        p = Paginator(all_course, 3, request=request)

        # 获取当前页内容
        all_course = p.page(page)

        return render(request, 'course-list.html', {
            'all_course': all_course,
            'sort': sort,
            'current_page': current_page,
            'host_course': host_course
        })
