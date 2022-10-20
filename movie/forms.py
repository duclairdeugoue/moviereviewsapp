from django.forms import ModelForm, Textarea
from .models import Review

class ReviewForm(ModelForm):
    def __init__(self, *args, **kwargs):
        super(ModelForm, self).__init__( *args, **kwargs)
        
        self.fields['text'].widget.attrs.update(
            { 'class': 'form-control my-3' }
        )
        self.fields['watchAgain'].widget.attrs.update(
            { 'class': 'form-check-input'},
        )

    class Meta:
        '''
            It specify which model the form is for and the fields we want in the form
        '''
        model = Review
        fields = ['text', 'watchAgain']
        labels = {
            'watchAgain': ('Watch Again')
        }
        widgets = {
            'text': Textarea(attrs={'rows': 4})
        }