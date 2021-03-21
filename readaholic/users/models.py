from django.db import models
from django.contrib.auth.models import User
from PIL import Image

# Create your models here.
class Profile(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE)
    image = models.ImageField(default = 'default.jpg', upload_to = 'profile_pics')
    def __str__(self):
        return '{} Profile'.format(self.user.username)
    def save(self, *args, **kwargs):
        super(Profile, self).save(*args, **kwargs)

        img = Image.open(self.image.path)
        if img.height > 300 or img.width > 300:
            output_size = (300, 300)
            img.thumbnail(output_size)
            img.save(self.image.path)

class Address(models.Model):
    STATE_CHOICE = (
        ("West Bengal", "West Bengal"),
        ("Jammu and Kashmir", "Jammu and Kashmir"),
        ("Gujrat", "Gujrat"),
    )
    profile = models.ForeignKey(Profile, on_delete=models.CASCADE)
    address_1 = models.CharField(max_length=100)
    address_2 = models.CharField(max_length=100)
    PIN = models.CharField(max_length=6)
    state = models.CharField(max_length=30, choices = STATE_CHOICE, default=None)
    def __str__(self):
        return "{}'s address".format(self.profile.user.username)
