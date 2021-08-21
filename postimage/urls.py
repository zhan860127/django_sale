from django.urls import path
from django.conf import settings
from django.conf.urls.static import static
from postimage import views as homeViews
from django.conf.urls import url
from django.conf.urls import url
from django.contrib import admin
from django.urls import path, include

from django.urls import path,re_path

from . import views
urlpatterns = [
    path('', views.index, name='Index'),
    url('upload_avatar/',homeViews.upload_avatar), # 上傳頭像
    url('upload',homeViews.upload,name='upload'), # 上傳頭像
    url('register',homeViews.sign_up,name='register'),
    path('logout', views.log_out, name='logout'),
    url(r'^cart/(\w+)$', views.get_cart),
    url(r'^additem/(\d+)/(\d+)/(\w+)/$', views.add_to_cart, name='additem-url'),
    url(r'^removeitem/(\d+)/$', views.remove_from_cart, name='removeitem-url'),
    url(r'^update_cart/(\d+)/(\d+)/$', views.update_cart, name='update_cart-url'),
    path('ecpay/',views.ecpay_view),
    path('login', views.sign_in, name='Login'),
    path('login',include('allauth.urls')),
    re_path(r'download/(?P<file_path>.*)/$', views.file_response_download1, name='file_download'),

]


