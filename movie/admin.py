from django.contrib import admin
from .models import Movie, Review

class MovieAdmin(admin.ModelAdmin):
    list_display = ('title','description','image')
    
class ReviewAdmin(admin.ModelAdmin):
    list_display = ('text','date', 'user', 'movie', 'watchAgain')



# Register your models here.
admin.site.register(Movie,MovieAdmin)
admin.site.register(Review,ReviewAdmin)