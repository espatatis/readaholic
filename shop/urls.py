from django.urls import path
from . import views as shop_views


urlpatterns = [
    path('', shop_views.home, name='shop-home'),
    path('<int:book_id>/', shop_views.detail, name='detail'),
    path('cart/', shop_views.cart, name='cart'),
    path('cart/checkout/', shop_views.checkout, name='checkout'),
]
