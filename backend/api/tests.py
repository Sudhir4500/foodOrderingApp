from django.test import TestCase

# Create your tests here.
# tests/test_models.py

import pytest
from mixer.backend.django import mixer
from models import MenuItem, Order, Category

@pytest.mark.django_db
class TestMenuItemModel:
    def test_menu_item_creation(self):
        menu_item = mixer.blend(MenuItem)
        assert isinstance(menu_item, MenuItem)
        assert menu_item.pk is not None

    def test_menu_item_str(self):
        menu_item = mixer.blend(MenuItem, name="Test Item")
        assert str(menu_item) == "Test Item"

@pytest.mark.django_db
class TestCategoryModel:
    def test_category_creation(self):
        category = mixer.blend(Category)
        assert isinstance(category, Category)
        assert category.pk is not None

    def test_category_str(self):
        category = mixer.blend(Category, name="Test Category")
        assert str(category) == "Test Category"

@pytest.mark.django_db
class TestOrderModel:
    def test_order_creation(self):
        order = mixer.blend(Order)
        assert isinstance(order, Order)
        assert order.pk is not None

    def test_order_str(self):
        user = mixer.blend(User, username="test_user")
        order = mixer.blend(Order, user=user)
        assert str(order) == f"Order #{order.id} by test_user"
