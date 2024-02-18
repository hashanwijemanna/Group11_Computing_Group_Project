import 'package:thamal_s_application7/core/app_export.dart';
import 'package:thamal_s_application7/presentation/map_bus_owner_bus_driver_screen/models/map_bus_owner_bus_driver_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
import 'package:flutter/material.dart';

/// A controller class for the MapBusOwnerBusDriverScreen.
///
/// This class manages the state of the MapBusOwnerBusDriverScreen, including the
/// current mapBusOwnerBusDriverModelObj
class MapBusOwnerBusDriverController extends GetxController with CodeAutoFill {
  TextEditingController searchController = TextEditingController();

  Rx<TextEditingController> otpController = TextEditingController().obs;

  Rx<MapBusOwnerBusDriverModel> mapBusOwnerBusDriverModelObj =
      MapBusOwnerBusDriverModel().obs;

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
