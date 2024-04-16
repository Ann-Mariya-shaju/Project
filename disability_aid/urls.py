"""DisabilityAid URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.0/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path

from disability_aid import views

urlpatterns = [
    path('', views.login),
    path('login_post', views.login_post),
    path('change_password', views.change_password),
    path('change_password_post', views.change_password_post),
    path('logout', views.logout),
    path('admin_home', views.admin_home),
    path('add_transport', views.add_transport),
    path('add_transport_post', views.add_transport_post),
    path('view_transport', views.view_transport),
    path('edit_transport/<tid>', views.edit_transport),
    path('edit_transport_post/<tid>', views.edit_transport_post),
    path('delete_transport/<tid>', views.delete_transport),
    path('add_hospital', views.add_hospital),
    path('add_hospital_post', views.add_hospital_post),
    path('view_hospital', views.view_hospital),
    path('edit_hospital/<tid>', views.edit_hospital),
    path('edit_hospital_post/<tid>', views.edit_hospital_post),
    path('delete_hospital/<tid>', views.delete_hospital),
    path('add_panchayat', views.add_panchayat),
    path('add_panchayat_post', views.add_panchayat_post),
    path('view_panchayat', views.view_panchayat),
    path('edit_panchayat/<tid>', views.edit_panchayat),
    path('edit_panchayat_post/<tid>', views.edit_panchayat_post),
    path('delete_panchayat/<tid>', views.delete_panchayat),
    path('admin_view_feedback', views.admin_view_feedback),
    path('view_pension_grant/<id>',views.view_pension_grant),
    path('view_agency_concession/<id',views.view_agency_concession),

                                    # transport

    path('transport_home', views.transport_home),
    path('view_user_request', views.view_user_request),
    path('view_user_request_status', views.view_user_request_status),
    path('approve_concession/<tid>', views.approve_concession),
    path('reject_concession/<tid>', views.reject_concession),


                    ##  user
    path('user_register', views.user_register),
    path('user_register_post', views.user_register_post),
    path('user_home', views.user_home),
    path('user_view_transport', views.user_view_transport),
    path('user_add_concession/<id>', views.user_add_concession),
    path('user_Add_concession_post/<id>', views.user_Add_concession_post),
    path('user_view_concession_request', views.user_view_concession_request),
    path('user_view_hospital', views.user_view_hospital),
    path('user_view_panchayat', views.user_view_panchayat),
    path('user_send_Request_post/<id>', views.user_send_Request_post),
    path('user_send_pension_request/<id>', views.user_send_pension_request),
    path('user_send_feedback', views.user_send_feedback),
    path('user_send_feedback_post', views.user_send_feedback_post),
    path('user_view_pension_logs', views.user_view_pension_logs),
    path('view_user_doctors/<id>', views.view_user_doctor),
    path('user_view_todays_sched', views.user_view_todays_sched),


    path('panchayat_home', views.panchayat_home ),
    path('panchayat_view_requests', views.panchayat_view_requests ),
    path('pan_appr_request/<id>', views.pan_appr_request ),
    path('pan_rej_request/<id>', views.pan_rej_request ),
    path('panchayat_view_appr_requests', views.panchayat_view_appr_requests ),
    path('panchayat_grant_pension/<id>', views.panchayat_grant_pension ),
    path('panchayat_grant_pension_post/<id>', views.panchayat_grant_pension_post ),

  # =============================hospital module==============================
    path('hospital_home', views.hospital_home),
    path('add_doctor', views.add_doctor),
    path('add_doctor_post', views.add_doctor_post),
    path('view_doctor', views.view_doctor),
    path('delete_doctor/<tid>', views.delete_doctor),
    path('edit_doctor/<tid>', views.edit_doctor),
    path('edit_doctor_post/<tid>', views.edit_doctor_post),
    path('add_schedule', views.add_schedule),
    path('add_schedule_post', views.add_schedule_post),
    path('hosp_view_up_sched', views.hosp_view_up_sched),
    path('hosp_del_sched/<id>', views.hosp_del_sched),
    path('hosp_view_todays_sched', views.hosp_view_todays_sched),
    path('hosp_view_appointments/<id>', views.hosp_view_appointments),

]
