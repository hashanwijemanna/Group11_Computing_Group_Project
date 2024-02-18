import 'package:thamal_s_application7/core/app_export.dart';import 'package:thamal_s_application7/presentation/student_dashboard_screen/models/student_dashboard_model.dart';import 'package:flutter/material.dart';/// A controller class for the StudentDashboardScreen.
///
/// This class manages the state of the StudentDashboardScreen, including the
/// current studentDashboardModelObj
class StudentDashboardController extends GetxController {TextEditingController searchController = TextEditingController();

Rx<StudentDashboardModel> studentDashboardModelObj = StudentDashboardModel().obs;

@override void onClose() { super.onClose(); searchController.dispose(); } 
 }
