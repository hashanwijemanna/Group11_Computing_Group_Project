import 'package:thamal_s_application7/core/app_export.dart';import 'package:thamal_s_application7/presentation/student_administration_home_screen/models/student_administration_home_model.dart';import 'package:flutter/material.dart';/// A controller class for the StudentAdministrationHomeScreen.
///
/// This class manages the state of the StudentAdministrationHomeScreen, including the
/// current studentAdministrationHomeModelObj
class StudentAdministrationHomeController extends GetxController {TextEditingController searchController = TextEditingController();

Rx<StudentAdministrationHomeModel> studentAdministrationHomeModelObj = StudentAdministrationHomeModel().obs;

@override void onClose() { super.onClose(); searchController.dispose(); } 
 }
