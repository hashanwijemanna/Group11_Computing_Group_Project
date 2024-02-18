import 'package:thamal_s_application7/core/app_export.dart';
import 'package:thamal_s_application7/presentation/driver_details_screen/models/driver_details_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the DriverDetailsScreen.
///
/// This class manages the state of the DriverDetailsScreen, including the
/// current driverDetailsModelObj
class DriverDetailsController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<DriverDetailsModel> driverDetailsModelObj = DriverDetailsModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
