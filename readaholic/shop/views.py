from django.shortcuts import render
from django.http import HttpResponse, HttpResponseRedirect
from .models import Book, Cart, Count
from django.contrib.auth.models import User
from django.db.models import F
from django.urls import reverse
from django import forms
from users.models import Profile, Address
from users.forms import UserRegistrationFom, UserLogInForm
from django.contrib.auth import authenticate, login, logout
from users.models import User
from base import check
from django.http import JsonResponse
from django.core import serializers


class CartForm(forms.Form):
    count = forms.IntegerField(initial=1)


def home(request):
    context = {
        'books': Book.objects.all(),
        'form': UserRegistrationFom(),
        'form2': UserLogInForm()
    }
    check(request)

    return render(request, 'shop/shop-home.html', context)


def detail(request, book_id):

    book = Book.objects.get(pk=book_id)
    context = {
        'book': book,
        'form': UserRegistrationFom(),
        'form3': CartForm(),
    }
    if request.is_ajax():
        form = CartForm(request.POST or None)
        data = {}
        print(form)
        if form.is_valid():
            print('#')
        if request.user.is_authenticated and form.is_valid():
            print("data count", form.cleaned_data['count'])
            count = form.cleaned_data['count']
            data['count'] = form.cleaned_data['count']
            data['status'] = 'ok'
            my_cart = Cart.objects.get(
                user=User.objects.get(email=request.user.email))
            counter, created = Count.objects.get_or_create(
                cart=my_cart, book=book)
            counter.count = F('count') + count
            my_cart.total = F('total') + count*book.price
            counter.price = F('price') + count*book.price
            counter.save()
            my_cart.save()
            return JsonResponse(data)
        else:
            return HttpResponse("You're not logged in dude ! So, you don't have a Cart")

        return HttpResponseRedirect(reverse('detail', args=(book_id,)))
    return render(request, 'shop/product.html', context)


def cart(request):
    if request.user.is_authenticated:
        check(request)
        cart = Cart.objects.get(user=User.objects.get(
            email=request.user.email))
        count = Count.objects.filter(cart=cart)

        for i in count:
            if str(i.id) in request.POST:

                cart.total = F('total') - i.price
                cart.save()
                i.delete()
                # count.save()
                return HttpResponseRedirect('')

        context = {
            'cart': cart,
            'count': count
        }
        return render(request, 'shop/cart.html', context)
    else:
        return render(request, 'shop/cart.html')


def checkout(request):
    user = User.objects.get(username=request.user.username)
    p = Profile.objects.get(user=user.id)
    A = Address.objects.get(profile=p)
    add_1 = A.address_1
    add_2 = A.address_2
    pin = A.PIN
    state = A.state
    context = {
        'add_1': add_1,
        'add_2': add_2,
        'pin': pin,
        'state': state
    }
    return render(request, 'shop/checkout.html', context)
