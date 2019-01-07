from django.contrib.auth.mixins import LoginRequiredMixin
from django.shortcuts import render
from django.views import View


class Home(LoginRequiredMixin, View):
    login_url = "/accounts/login/"

    def get(self, request):
        return render(request, "main/home.html")
