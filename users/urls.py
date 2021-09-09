from django.urls import path
from . import views as user_views


urlpatterns = [
    path('<slug:username>/', user_views.profile, name = 'profile'),
]