from django.contrib import admin
from .models import Photo
from cart.models import Item,Cart
admin.site.register(Photo)  #註冊至Administration(管理員後台)
admin.site.register(Item)
admin.site.register(Cart)
# Register your models here.
