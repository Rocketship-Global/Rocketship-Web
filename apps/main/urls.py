from django.urls import path

from apps.main.views import Home

urlpatterns = [
    path('', Home.as_view(), name='home'),
]
