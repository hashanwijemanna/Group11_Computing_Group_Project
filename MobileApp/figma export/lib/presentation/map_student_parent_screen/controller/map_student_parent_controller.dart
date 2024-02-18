import 'package:thamal_s_application7/core/app_export.dart';
import 'package:thamal_s_application7/presentation/map_student_parent_screen/models/map_student_parent_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
import 'package:flutter/material.dart';

/// A controller class for the MapStudentParentScreen.
///
/// This class manages the state of the MapStudentParentScreen, including the
/// current mapStudentParentModelObj
class MapStudentParentController extends GetxController with CodeAutoFill {
  TextEditingController searchController = TextEditingController();

  Rx<TextEditingController> otpController = TextEditingController().obs;

  Rx<MapStudentParentModel> mapStudentParentModelObj =
      MapStudentParentModel().obs;

  @override
  void codeUpdated() {
    otpController.value.text = code ?? '';
  }

  @override
  void onInit() {
    super.onInit();
    listenForCode();
  }

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
