"""
URL configuration for crud project.

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/5.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path, include

urlpatterns = [
    path('admin/', admin.site.urls),
    path('articles/', include('articles.urls')),
    path('accounts/', include('accounts.urls')),
    # /accounts/로 시작하면 그 뒤의 주소들은 전부 회원 관련 기능으로 연결
    # django.contrib.auth : django에서 기본으로 제공하는 회원 시스템이 들어있는 앱 (auth=인증)
    # 로그인, 로그아웃, 비밀번호 변경, 비밀번호 재설정 
    path('accounts/', include('django.contrib.auth.urls')),
]
