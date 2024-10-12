from django.db import models
from django.conf import settings

class Item(models.Model):
  title = models.CharField(max_length = 50)

  def __str__(self):
    return self.title

class OrderItem(models.Model):
  pass

class ShoppingCart(models.Model):
  user = 

  def __str__(self):
    return self.user.username
  
