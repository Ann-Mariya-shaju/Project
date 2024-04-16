from django.db import models

# Create your models here.


class Login(models.Model):
    username = models.CharField(max_length=100)
    password = models.CharField(max_length=100)
    user_type = models.CharField(max_length=100)


class Transport(models.Model):
    name = models.CharField(max_length=100)
    email = models.CharField(max_length=100)
    phone = models.CharField(max_length=100)
    place = models.CharField(max_length=100)
    post = models.CharField(max_length=100)
    pin = models.CharField(max_length=100)
    LOGIN = models.ForeignKey(Login, on_delete=models.CASCADE)


class Hospital(models.Model):
    name = models.CharField(max_length=100)
    email = models.CharField(max_length=100)
    phone = models.CharField(max_length=100)
    place = models.CharField(max_length=100)
    post = models.CharField(max_length=100)
    pin = models.CharField(max_length=100)
    latitude = models.CharField(max_length=100)
    longitude = models.CharField(max_length=100)
    LOGIN = models.ForeignKey(Login, on_delete=models.CASCADE)


class Panchayat(models.Model):
    name = models.CharField(max_length=100)
    email = models.CharField(max_length=100)
    phone = models.CharField(max_length=100)
    place = models.CharField(max_length=100)
    post = models.CharField(max_length=100)
    pin = models.CharField(max_length=100)
    LOGIN = models.ForeignKey(Login, on_delete=models.CASCADE)


class User(models.Model):
    photo = models.CharField(max_length=100)
    name = models.CharField(max_length=100)
    email = models.CharField(max_length=100)
    phone = models.CharField(max_length=100)
    place = models.CharField(max_length=100)
    post = models.CharField(max_length=100)
    pin = models.CharField(max_length=100)
    LOGIN = models.ForeignKey(Login, on_delete=models.CASCADE)


class Concession(models.Model):
    concession = models.CharField(max_length=100)
    from_place = models.CharField(max_length=100, default=1)
    to_place = models.CharField(max_length=100, default=1)
    status = models.CharField(max_length=100, default=1)
    USER = models.ForeignKey(User, on_delete=models.CASCADE)
    TRANSPORT = models.ForeignKey(Transport, on_delete=models.CASCADE)

class PEnsion(models.Model):
    date=models.CharField(max_length=100, default="")
    file=models.CharField(max_length=100)
    status=models.CharField(max_length=100)
    USER = models.ForeignKey(User, on_delete=models.CASCADE)
    PANCHAYAT = models.ForeignKey(Panchayat, on_delete=models.CASCADE)

class Feedback(models.Model):
    date=models.CharField(max_length=100, default="")
    feedback=models.CharField(max_length=100)
    USER = models.ForeignKey(User, on_delete=models.CASCADE)

class Pension_logs(models.Model):
    date=models.CharField(max_length=100, default="")
    time=models.CharField(max_length=100, default="")
    amount=models.CharField(max_length=100, default="")
    PENSION = models.ForeignKey(PEnsion, on_delete=models.CASCADE)


class doctor(models.Model):
    name = models.CharField(max_length=100)
    email = models.CharField(max_length=100)
    specializaion=models.CharField(max_length=100)
    qualification=models.CharField(max_length=100)
    phone = models.CharField(max_length=100)
    place = models.CharField(max_length=100)
    post = models.CharField(max_length=100)
    pin = models.CharField(max_length=100)
    HOSPITAL = models.ForeignKey(Hospital, on_delete=models.CASCADE)

class schedule(models.Model):
    date=models.DateField()
    from_time=models.CharField(max_length=100)
    to_time=models.CharField(max_length=100)
    DOCTOR = models.ForeignKey(doctor, on_delete=models.CASCADE)


class appointment(models.Model):
    date=models.DateField()
    token=models.CharField(max_length=100)
    USER = models.ForeignKey(User, on_delete=models.CASCADE)
    SCHEDULE = models.ForeignKey(schedule, on_delete=models.CASCADE)
