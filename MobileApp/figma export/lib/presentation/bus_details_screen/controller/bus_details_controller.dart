import 'package:thamal_s_application7/core/app_export.dart';
import 'package:thamal_s_application7/presentation/bus_details_screen/models/bus_details_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the BusDetailsScreen.
///
/// This class manages the state of the BusDetailsScreen, including the
/// current busDetailsModelObj
class BusDetailsController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<BusDetailsModel> busDetailsModelObj = BusDetailsModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
