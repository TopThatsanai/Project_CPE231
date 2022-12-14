from django.db import models

# Create your models here.
class Data(models.Model):
    key = models.CharField(max_length=10,primary_key=True)
    value= models.CharField(max_length=100)

class  customer(models.Model):
    customer_code = models.CharField(max_length=10,primary_key=True)
    fname = models.CharField(max_length=20)
    lname = models.CharField(max_length=20)
    email = models.CharField(max_length=40)
    customer_address = models.CharField(max_length=100)
    class Meta:
        db_table = "customer"
        managed = False
    def str(self):
        return self.customer_code

class  delivery(models.Model):
    delivery_type = models.CharField(max_length=50,primary_key=True)
    description = models.CharField(max_length=50)
    class Meta:
        db_table = "delivery"
        managed = False
    def str(self):
        return self.delivery_type

class  discount(models.Model):
    product_code = models.CharField(max_length=10,primary_key=True)
    quantity = models.FloatField(null=True)
    class Meta:
        db_table = "discount"
        managed = False
    def str(self):
        return self.delivery_type

class product(models.Model):
    product_code = models.CharField(max_length=10, primary_key=True)
    product_name = models.CharField(max_length=50)
    product_type = models.CharField(max_length=20)
    product_brand = models.CharField(max_length=20)
    price = models.FloatField(null=True, blank=True)
    class Meta:
        db_table = "product"
        unique_together = (("product_code", "product_name"),)
        managed = False
    def __str__(self):
        return "%s %s" % (self.product_code)

class  invoice(models.Model):
    invoice_no = models.CharField(max_length=10,primary_key=True)
    amount_due = models.FloatField(null=True)
    total = models.FloatField(null=True)
    customer_code = models.CharField(max_length=10)
    payment_method = models.CharField(max_length=20)
    delivery_type = models.CharField(max_length=50)
    vat = models.FloatField(null=True)
    date = models.DateField(null=True)
    class Meta:
        db_table = "invoice"
        managed = False
    def str(self):
        return self.delivery_type

class invoicelineitem(models.Model):
    invoice_no = models.ForeignKey(invoice, on_delete=models.CASCADE, db_column='invoice_no')
    item_no = models.IntegerField()
    product_code = models.ForeignKey(product, on_delete=models.CASCADE, db_column='product_code')
    quantity = models.IntegerField(null=True)
    price = models.FloatField(null=True)
    total = models.FloatField(null=True)
    class Meta:
        db_table = "invoice_line_item"
        unique_together = ("invoice_no", "item_no")
        managed = False
    def __str__(self):
        return '{"invoice_no":"%s","item_no":"%s"}' % (self.invoice_no, self.item_no)


class payment(models.Model):
    payment_method = models.CharField(max_length=20, primary_key=True)
    description = models.CharField(max_length=20)
    class Meta:
        db_table = "payment"
        managed = False
    def __str__(self):
        return "%s %s" % (self.payment_method)    

    

class product_warehouse(models.Model):
    code = models.CharField(max_length=10, primary_key=True)
    product_name = models.CharField(max_length=50)
    quantity =models.FloatField(null=True, blank=True) 
    unit = models.FloatField(null=True, blank=True)
    class Meta:
        db_table = "product_warehouse"
        unique_together = (("code", "product_name"),)
        managed = False
    def __str__(self):
        return "%s %s" % (self.code)  

class promotion(models.Model):
    product_code = models.CharField(max_length=10, primary_key=True)
    product_name = models.CharField(max_length=20)
    description = models.CharField(max_length=100, null=True)
    class Meta:
        db_table = "promotion"
        unique_together = (("product_code", "product_name"),)
        managed = False
    def __str__(self):
        return "%s %s" % (self.product_code)  
