from django.shortcuts import render
from django.http import HttpResponse, HttpResponseRedirect
from .models import Book, Cart, Count 
from django.contrib.auth.models import User
from django.db.models import F
from django.urls import reverse
from django import forms

class CartForm(forms.Form):
    count = forms.IntegerField()

def home(request):
    context = {
        'books': Book.objects.all()
    }
    return render(request,'shop/shop-home.html',context)

def detail(request, book_id):

    book = Book.objects.get(pk=book_id)
    context = {
        'book': book
    }
    if request.POST:
        form = CartForm(request.POST)
        if request.user.is_authenticated and form.is_valid():
            count = form.cleaned_data['count']
            my_cart = Cart.objects.get(user=User.objects.get(username = request.user.username))
            counter, created = Count.objects.get_or_create(cart=my_cart,book=book)
            counter.count = F('count') + count
            counter.save()
            my_cart.total = F('total') + count*book.price
            my_cart.save()
        else:
            return HttpResponse("You're not logged in dude ! So, you don't have a Cart")

        return HttpResponseRedirect(reverse('detail',args=(book_id,)))
    return render(request, 'shop/product.html',context)

def cart(request):
    if request.user.is_authenticated:
        cart = Cart.objects.get(user=User.objects.get(username = request.user.username))
        count = Count.objects.filter(cart=cart)
        context = {
            'cart': cart,
            'count': count
        }
        return render(request,'shop/cart.html',context)
    else:
        return render(request,'shop/cart.html')