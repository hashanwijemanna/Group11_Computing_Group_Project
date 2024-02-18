import 'package:thamal_s_application7/core/app_export.dart';import 'package:thamal_s_application7/presentation/bus_owner_home_screen/models/bus_owner_home_model.dart';import 'package:flutter/material.dart';/// A controller class for the BusOwnerHomeScreen.
///
/// This class manages the state of the BusOwnerHomeScreen, including the
/// current busOwnerHomeModelObj
class BusOwnerHomeController extends GetxController {TextEditingController searchController = TextEditingController();

Rx<BusOwnerHomeModel> busOwnerHomeModelObj = BusOwnerHomeModel().obs;

@override void onClose() { super.onClose(); searchController.dispose(); } 
 }
