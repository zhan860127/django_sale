from django import forms
from .models import Photo
from django import forms
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.models import User

class UploadModelForm(forms.ModelForm):
    class Meta:
        model = Photo
        fields = ('name','description','image','image1','image2','image3','tag')
        widgets = {
            'name':forms.TextInput(attrs={'id':'name','size': 10 , 'title': 'Your name'}),
            'description':forms.TextInput(attrs={'id': 'description'}),
            'tag':forms.TextInput(attrs={'id': 'tag'}),
            'price':forms.NumberInput(attrs={id:'price'}),    
            'image': forms.FileInput(attrs={'id': 'avatarSlect'}),
            'image1': forms.FileInput(attrs={'id': 'avatarSlect1'}),
            'image2': forms.FileInput(attrs={'id': 'avatarSlect2'}),
            'image3': forms.FileInput(attrs={'id': 'avatarSlect3'}),
        }

class LoginForm(forms.Form):
    username = forms.CharField(
        label="帳號",
        widget=forms.TextInput(attrs={'class': 'form-control'})
    )
    password = forms.CharField(
        label="密碼",
        widget=forms.PasswordInput(attrs={'class': 'form-control'})
    )


class RegisterForm(UserCreationForm):
    username = forms.CharField(
        label="帳號",
        widget=forms.TextInput(attrs={'class': 'form-control'})
    )
    email = forms.EmailField(
        label="電子郵件",
        widget=forms.EmailInput(attrs={'class': 'form-control'})
    )
    password1 = forms.CharField(
        label="密碼",
        widget=forms.PasswordInput(attrs={'class': 'form-control'})
    )
    password2 = forms.CharField(
        label="密碼確認",
        widget=forms.PasswordInput(attrs={'class': 'form-control'})
    )
    class Meta:
        model = User
        fields = ('username', 'email', 'password1', 'password2')