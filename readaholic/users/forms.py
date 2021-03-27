from django import forms
from django.contrib.auth.models import User
from django.contrib.auth.forms import UserCreationForm
from django.forms import ModelForm
from django.utils.translation import ugettext_lazy as _
from .models import User


class UserRegistrationFom(ModelForm):
    firstname = forms.CharField(widget=forms.TextInput(
        attrs={'style': 'width: 100%;'}),
        max_length=100)
    lastname = forms.CharField(widget=forms.TextInput(
        attrs={'style': 'width: 100%;'}), max_length=100)
    email = forms.EmailField(widget=forms.EmailInput(
        attrs={'style': 'width: 100%;'}))
    password1 = forms.CharField(
        widget=forms.PasswordInput(attrs={'style': 'width: 100%;'}))
    password2 = forms.CharField(
        widget=forms.PasswordInput(attrs={'style': 'width: 100%;'}))

    class Meta:
        model = User
        fields = ['firstname', 'lastname',
                  'email', 'password1', 'password2']


class UserLogInForm(ModelForm):
    email = forms.EmailField(widget=forms.EmailInput(
        attrs={'style': 'width: 100%;'}))
    password = forms.CharField(
        widget=forms.PasswordInput(attrs={'style': 'width: 100%;'}))

    class Meta:
        model = User
        fields = ['email', 'password']
