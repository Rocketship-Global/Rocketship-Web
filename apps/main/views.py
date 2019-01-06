from django.shortcuts import render


def home(request):
    return render(request, "asset_manager/bulma.html")
