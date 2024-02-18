import 'package:thamal_s_application7/core/app_export.dart';import 'package:thamal_s_application7/presentation/bus_driver_home_screen/models/bus_driver_home_model.dart';import 'package:flutter/material.dart';/// A controller class for the BusDriverHomeScreen.
///
/// This class manages the state of the BusDriverHomeScreen, including the
/// current busDriverHomeModelObj
class BusDriverHomeController extends GetxController {TextEditingController searchController = TextEditingController();

Rx<BusDriverHomeModel> busDriverHomeModelObj = BusDriverHomeModel().obs;

@override void onClose() { super.onClose(); searchController.dispose(); } 
 }
