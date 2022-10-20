from django.db import IntegrityError
from django.shortcuts import render
from django.contrib.auth.forms import UserCreationForm, AuthenticationForm
from .forms import UserCreateForm, UserLoginForm
from django.contrib.auth.models import User
from django.contrib.auth import authenticate,login, logout
from django.shortcuts import redirect
# Create your views here.
def signupaccount(request):
    context = {
        'form': UserCreateForm
    }
    if request.method == 'GET':
        return render(request,'signupaccount.html', context)
    else:
        if request.POST['password1'] == request.POST['password2']:
            try:
                user = User.objects.create_user(
                    request.POST['username'],
                    password= request.POST['password1']
                )
                user.save()
                login(request, user)
                return redirect('home')
            
            except IntegrityError:
                context['error'] = 'Username already exist, choose another one'
                return render(request,'signupaccount.html', context)
        else:
            context['error'] = 'Password do not match'
            return render(request,'signupaccount.html', context)

def logoutaccount(request):
    logout(request)
    return redirect('home')

def loginaccount(request):
    context = {
        'form': UserLoginForm
    }
    if request.method == 'GET':
        return render(request,'loginaccount.html', context)
    else:
        user = authenticate(
            request,
            username=request.POST['username'],
            password=request.POST['password']
        )
        
        if user is None:
            context['error'] = 'Username and password do not match'
            return render(request,'loginaccount.html', context)
        else:
            login(request,user)
            return redirect('home')