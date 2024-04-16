from rest_framework import routers
from django.urls import path
from .views import MenuItemViewSet, OrdersViewSet, CategoryViewSet, register_user, login_user, logout_user

router = routers.DefaultRouter()
router.register(r'menuitems', MenuItemViewSet)
router.register(r'orders', OrdersViewSet)
router.register(r'category', CategoryViewSet)

urlpatterns = [
    *router.urls,
    path('register/', register_user, name='register'),
    path('login/', login_user, name='login'),
    path('logout/', logout_user, name='logout'),
]
