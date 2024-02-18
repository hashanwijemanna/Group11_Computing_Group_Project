import 'package:thamal_s_application7/core/app_export.dart';
import 'package:thamal_s_application7/presentation/stu_ad_announcement_one_screen/models/stu_ad_announcement_one_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the StuAdAnnouncementOneScreen.
///
/// This class manages the state of the StuAdAnnouncementOneScreen, including the
/// current stuAdAnnouncementOneModelObj
class StuAdAnnouncementOneController extends GetxController {
  TextEditingController searchController = TextEditingController();

  TextEditingController editTextController = TextEditingController();

  Rx<StuAdAnnouncementOneModel> stuAdAnnouncementOneModelObj =
      StuAdAnnouncementOneModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
    editTextController.dispose();
  }
}
