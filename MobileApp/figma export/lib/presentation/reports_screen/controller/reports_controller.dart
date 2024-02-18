import 'package:thamal_s_application7/core/app_export.dart';
import 'package:thamal_s_application7/presentation/reports_screen/models/reports_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ReportsScreen.
///
/// This class manages the state of the ReportsScreen, including the
/// current reportsModelObj
class ReportsController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<ReportsModel> reportsModelObj = ReportsModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
