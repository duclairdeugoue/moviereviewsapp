from pyexpat import model
from django.db import models
from django.contrib.auth.models import User

class Movie(models.Model):
    title = models.CharField(max_length=100)
    description = models.CharField(max_length=100)
    image = models.ImageField(upload_to='movie/images/')
    url = models.URLField(blank=True)
    
    # function that helf to format the model in key values pairs
    # def __str__(self):
    #     return str({
    #         'title': self.title,
    #         'description': self.description
    #     })


class Review(models.Model):
    text = models.CharField(max_length=100)
    date = models.DateTimeField(auto_now_add=True)
    user = models.ForeignKey(User,on_delete=models.CASCADE)
    movie = models.ForeignKey(Movie,on_delete=models.CASCADE)
    watchAgain = models.BooleanField()
    
    
    def __str__(self):
        return self.text
    
    