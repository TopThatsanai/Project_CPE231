"""project URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.2/topics/http/urls/
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
from django.urls import path

from cosmetic import views

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', views.index, name='index'),
    path('index', views.index),
    path('signUp', views.signup, name='sign_up'),
    path('signIn', views.signin, name='sign_in'),
    path('Lipstick', views.lipstick, name='lipstick'),
    path('Eyeliner', views.eyeLiner, name='eyeliner'),
    path('Mascara', views.mascara, name='mascara'),
    path('Eyebrownpencil', views.eyebrownpencil, name='eyebrown_pencil'),
    path('Powderpuff', views.powderpuff, name='powder_puff'),
    path('Foundation', views.foundation, name='foundation'),
    path('Promotion', views.Promotion, name = 'promotion'),
    path('Gucci', views.gucci, name = 'gucci'),
    path('payment', views.Payment, name = 'payment')
]
