from django.shortcuts import render
from django.views import View

from pure_pagination import PageNotAnInteger, EmptyPage, Paginator
from .models import Course
from operation.models import UserFavorite


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


class CourseDetailView(View):
    # 课程详情
    def get(self, request, course_id):
        course_fav = False
        org_fav = False
        course = Course.objects.get(id=int(course_id))
        course.click_nums += 1
        course.save()

        # 相关课程
        tag = course.tag
        if tag:
            relate_course = Course.objects.filter(tag=tag)[:1]
        else:
            relate_course = []

        # 获取收藏
        if request.user.is_authenticated():
            if UserFavorite.objects.filter(user=request.user, fav_id=course.id, fav_type=1):
                course_fav = True
            if UserFavorite.objects.filter(user=request.user, fav_id=course.course_org.id, fav_type=2):
                org_fav = True

        return render(request, 'course-detail.html', {
            'course': course,
            'relate_course': relate_course,
            'course_fav': course_fav,
            'org_fav': org_fav
        })
