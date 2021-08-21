from django.db import models
from django.utils import timezone
from cart.cart import models as model1

class Photo(models.Model):
    name=models.CharField(blank=False, null=True,max_length=255)
    price=models.IntegerField(blank=False, null=True)
    tag=models.TextField(blank=False, null=True)
    description=models.TextField(blank=False, null=True)
    image = models.ImageField(upload_to='image/',blank=False, null=True)
    image1 = models.ImageField(upload_to='image/',blank=True, null=True)
    image2 = models.ImageField(upload_to='image/',blank=True, null=True)
    image3 = models.ImageField(upload_to='image/',blank=True, null=True)

    upload_date = models.DateField(default=timezone.now)
    