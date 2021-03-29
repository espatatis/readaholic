from users.forms import UserRegistrationFom, UserLogInForm
from django.contrib.auth import authenticate, login, logout
from users.models import User
from users.models import Profile, Address
from django.shortcuts import render
from django.http import HttpResponse, HttpResponseRedirect
from shop.models import Book, Cart, Count


def check(request):
    if request.POST:
        if 'password2' in request.POST and request.POST.get('password1') == request.POST.get('password2'):

            saveuser = User.objects.create_user(
                email=request.POST['email'], password=request.POST['password1'])
            saveuser.fname = request.POST['firstname']
            saveuser.lname = request.POST['lastname']
            saveuser.save()
            Cart.objects.create(user=User.objects.get(
                email=saveuser.email))
            Profile.objects.create(user=User.objects.get(
                email=saveuser.email))
            login(request, saveuser)

            return HttpResponseRedirect('')
        if 'password' in request.POST:
            email = request.POST['email']
            password = request.POST['password']
            user = authenticate(request, email=email, password=password)
            if user is not None:
                login(request, user)
                return HttpResponseRedirect('')
            else:
                return HttpResponse('something is wrong')
        if 'logout' in request.POST:
            logout(request)
            return HttpResponseRedirect('')
