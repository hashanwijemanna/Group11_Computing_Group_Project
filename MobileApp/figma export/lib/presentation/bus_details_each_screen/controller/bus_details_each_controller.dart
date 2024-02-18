import 'package:thamal_s_application7/core/app_export.dart';
import 'package:thamal_s_application7/presentation/bus_details_each_screen/models/bus_details_each_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the BusDetailsEachScreen.
///
/// This class manages the state of the BusDetailsEachScreen, including the
/// current busDetailsEachModelObj
class BusDetailsEachController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<BusDetailsEachModel> busDetailsEachModelObj = BusDetailsEachModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
