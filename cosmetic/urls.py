from django.contrib import admin
from django.urls import path, include

from cosmetic import views
from order import views as order_views

urlpatterns = [

    path('admin/', admin.site.urls),
    path('', views.index, name='index'),
    path('index', views.index),
    path('Lipstick', views.lipstick, name='lipstick'),
    path('Eyeliner', views.eyeLiner, name='eyeliner'),
    path('Mascara', views.mascara, name='mascara'),
    path('Eyebrownpencil', views.eyebrownpencil, name='eyebrown_pencil'),
    path('Powderpuff', views.powderpuff, name='powder_puff'),
    path('Foundation', views.foundation, name='foundation'),
    path('Promotion', views.Promotion, name = 'promotion'),
    path('cart', order_views.Cart, name = 'cart'),
    path('product/list', views.ProductList.as_view(), name='product_list'),
    path('customer/list', views.CustomerList.as_view(),name='customer_list'),
    path('customer/detail/<customer_code>', views.CustomerDetail.as_view(), name='customer_detial'),
    path('payment/list', views.PaymentList.as_view(), name='payment_list'),
    path('payment/detail/<payment_method>', order_views.PaymentDetail.as_view(), name='payment_detail'),
    path('delivery/list', views.DeliveryList.as_view(), name='deliverly_list'),
    path('delivery/detail/<delivery_type>', order_views.DeliveryDetail.as_view(), name='deliverly_detail'),
    path('productWarehouse/list', views.WarehouseList.as_view(), name='productWarehouse_list'),
    path('invoice/list', order_views.InvoiceList.as_view(), name='order_list'),
    path('invoice/detail/<str:pk>/<str:pk2>', order_views.InvoiceDetail.as_view(), name='order_detial'),

    path('invoice/report/<str:pk>/<str:pk2>', order_views.OrderReport.as_view(), name='order_report'),
    path('invoice/update', order_views.InvoiceUpdate.as_view(), name='invoice_update'),
    path('invoice/delete', order_views.InvoiceDelete.as_view(), name='invoice_delete'),
]
