import 'package:thamal_s_application7/core/app_export.dart';
import 'package:thamal_s_application7/presentation/driver_details_each_screen/models/driver_details_each_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the DriverDetailsEachScreen.
///
/// This class manages the state of the DriverDetailsEachScreen, including the
/// current driverDetailsEachModelObj
class DriverDetailsEachController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<DriverDetailsEachModel> driverDetailsEachModelObj =
      DriverDetailsEachModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
