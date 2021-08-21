from django.shortcuts import render,redirect
from .forms import UploadModelForm
from .models import Photo
from django.http.response import HttpResponse
from django.http import FileResponse  
import os
from django.http import HttpResponse, Http404, FileResponse
from .forms import *
from django.contrib.auth import authenticate, login, logout
from django.contrib.auth.decorators import login_required
from django.template.loader import get_template
from cart.cart import Cart
from .models import Photo
from .models import Photo as Product
from django.views.decorators.csrf import csrf_exempt
from .sample_create_order_ALL import main
from cart.models import models


@csrf_exempt
def ecpay_view(request):
    return HttpResponse(main(request))

def log_out(request):
    logout(request)
    return redirect('/postimage/') #重新導向到登入畫面

def sign_in(request):
    form = LoginForm()
    if request.method == "POST":
        username = request.POST.get("username")
        password = request.POST.get("password")
        user = authenticate(request, username=username, password=password)
        if user is not None:
            login(request, user)
            return redirect('/postimage/')  #重新導向到首頁
    context = {
        'form': form
    }
    return render(request, './login.html', context)

def index(request):
    photos = Photo.objects.all()  #查詢所有資料
    
    form = UploadModelForm()
    if request.method == "POST":
        form = UploadModelForm(request.POST, request.FILES)
        if form.is_valid():
            form.save()
            return redirect('/postimage/')
    context = {
        'photos':photos,
        'form': form
    }
    return render(request, 'photos/index.html', context)

def upload(request):
    photos = Photo.objects.all()  #查詢所有資料
    
    form = UploadModelForm()
    if request.method == "POST":
        form = UploadModelForm(request.POST, request.FILES)
        if form.is_valid():
            form.save()
            return redirect('/postimage/')
    context = {
        'photos':photos,
        'form': form
    }
    return render(request, 'photos/upload.html', context)

def upload_avatar(request):
    file_obj = request.FILES.get('avatar')
    print(file_obj)
    file_path = os.path.join('/static/images/', file_obj.name)
    with open(file_path, 'wb') as f:
        for chunk in file_obj.chunks():
            f.write(chunk)
    return HttpResponse(file_path)

# Create your views here.

def file_response_download1(request, file_path):
    try:
        response = FileResponse(open(file_path, 'rb'))
        response['content_type'] = "application/octet-stream"
        response['Content-Disposition'] = 'attachment; filename=' + os.path.basename(file_path)
        
        
        return response
    except Exception:
        raise Http404

def file_download(request, file_path):
    # do something...
    with open(file_path) as f:
        c = f.read()
    return HttpResponse(c)

def file_response_download(request, file_path):
    ext = os.path.basename(file_path).split('.')[-1].lower()
    # cannot be used to download py, db and sqlite3 files.
    if ext not in ['py', 'db',  'sqlite3']:
        response = FileResponse(open(file_path, 'rb'))
        response['content_type'] = "application/octet-stream"
        response['Content-Disposition'] = 'attachment; filename=' + os.path.basename(file_path)
        return response
    else:
        raise Http404


def sign_up(request):
    form = RegisterForm()
    if request.method == "POST":
        form = RegisterForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('/postimage/login')  #重新導向到首頁
    context = {
        'form': form
    }
    return render(request, './register.html', context)



def add_to_cart(request, product_id, quantity,user_id):
    product = Product.objects.get(id=product_id)
    cart = Cart(request,user_id)
    cart.add(product, product.price, quantity,user_id)
    return redirect('/postimage/cart/'+user_id)

def remove_from_cart(request, product_id):
    product = Product.objects.get(id=product_id)
    cart = Cart(request)
    cart.remove(product)
    return redirect('/postimage/')


def get_cart(request,user_id):
    return render(request, 'cart.html', {'cart': Cart(request,user_id)})

@csrf_exempt
def update_cart(request, product_id, quantity):

    product = Product.objects.get(id=product_id)
    cart = Cart(request)
    cart.update(product,quantity,product.price)
    print("a")
    return redirect('/postimage/cart/')