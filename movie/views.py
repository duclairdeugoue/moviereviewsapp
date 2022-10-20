from django.http import HttpResponse
from django.shortcuts import get_object_or_404, render
from django.contrib.auth.decorators import login_required
# from django.views.generic import ListView, DetailView
from .forms import ReviewForm
from django.shortcuts import redirect
from .models import Movie, Review

# def index(request):
#     return render(request,'index.html')

# class MovieListView(ListView):
#     model = Movie


def home(request):
    searchTerm = request.GET.get('searchMovie')
    
    if searchTerm:
        movies = Movie.objects.filter(title__icontains=searchTerm)
    else:
        movies = Movie.objects.all()

    context = {
        'searchTerm':searchTerm,
        'name': 'duclairdeugoue',
        'movies': movies,
    }

    return render(request,'home.html',context)


def about(request):
    return render(request,'about.html')


def signup(request):
    email = request.GET.get('email')
    return render(
        request,
        'signup.html',
        {'email': email } 
    )


def detail(request, movie_id):
    
    movie = get_object_or_404(Movie, pk=movie_id)
    reviews = Review.objects.filter(movie=movie)
    context = {
       'movie': movie,
       'reviews': reviews,
    }
    return render(request,'detail.html',context)

@login_required
def createreview(request, movie_id):
    movie = get_object_or_404(Movie, pk=movie_id)
    context = {
        'form': ReviewForm(),
        'movie': movie
    }

    if request.method == 'GET':
        return render(request, 'createreview.html',context)
    else:
        try:
            form = ReviewForm(request.POST)
            newReview = form.save(commit=False)
            newReview.user = request.user
            newReview.movie = movie
            newReview.save()

            return redirect('detail',newReview.movie_id)

        except ValueError:
            context['error'] = 'Bad data passed in'
            return render(request, 'createreview.html', context)

@login_required
def updatereview(request, review_id):
    context = {
        
    }
    review = get_object_or_404(Review,pk=review_id,user=request.user)
    context['review'] = review

    if request.method == 'GET':
        form = ReviewForm(instance=review)
        context['form'] = form
        return render(request, 'updatereview.html',context)
    else:
        try:
            form = ReviewForm(request.POST,instance=review)
            context['form'] = form
            form.save()
            return redirect('detail', review.movie.id)
        except ValueError:
            context['error'] = 'Bad data in form'
            return render(request,'updatereview.html',context)

@login_required
def deletereview(request, review_id):
    review = get_object_or_404(Review, pk=review_id, user = request.user)
    review.delete()
    return redirect('detail', review.movie.id)