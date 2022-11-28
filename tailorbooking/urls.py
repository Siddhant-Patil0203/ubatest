from django.contrib import admin
from django.urls import path, include
from . import views
from django.contrib.auth.decorators import login_required

starting_url = "abc/"

urlpatterns = [
    path(f"{starting_url}", views.Home.as_view(), name="home"),
    path(f"{starting_url}bookings/", views.Bookings.as_view(), name="bookings"),
    path(f"{starting_url}accounts/", include("allauth.urls")),
    path(f"{starting_url}admin/", admin.site.urls),
    path(
        f"{starting_url}tailors/<slug:username>",
        login_required(views.TailorView.as_view()),
        name="tailor-details",
    ),
    path(f"{starting_url}check-availability/", views.CheckAvailability),
    path(f"{starting_url}user-profile", views.Userprofile, name="user-profile"),
    path(f"{starting_url}tailor-profile", views.TailorProfile, name="tailor-profile"),
    path(f"{starting_url}user-register/", views.registerUser),
]
