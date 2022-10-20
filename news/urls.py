from tkinter import N
from django.urls import path
from . import views as newsView

urlpatterns = [
    path('',newsView.news, name='news')
]
