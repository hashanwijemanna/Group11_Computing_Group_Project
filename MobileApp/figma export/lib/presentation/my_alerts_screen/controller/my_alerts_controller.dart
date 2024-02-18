import 'package:thamal_s_application7/core/app_export.dart';import 'package:thamal_s_application7/presentation/my_alerts_screen/models/my_alerts_model.dart';import 'package:flutter/material.dart';/// A controller class for the MyAlertsScreen.
///
/// This class manages the state of the MyAlertsScreen, including the
/// current myAlertsModelObj
class MyAlertsController extends GetxController {TextEditingController searchController = TextEditingController();

Rx<MyAlertsModel> myAlertsModelObj = MyAlertsModel().obs;

@override void onClose() { super.onClose(); searchController.dispose(); } 
 }
