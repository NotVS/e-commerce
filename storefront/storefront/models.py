from django.db import models

class Item(models.Model):
  title = models.CharField

class OrderItem(models.Model):
  pass

class ShoppingCart(models.Model):
  pass
  
