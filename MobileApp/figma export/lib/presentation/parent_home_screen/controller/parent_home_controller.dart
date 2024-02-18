import 'package:thamal_s_application7/core/app_export.dart';import 'package:thamal_s_application7/presentation/parent_home_screen/models/parent_home_model.dart';import 'package:flutter/material.dart';/// A controller class for the ParentHomeScreen.
///
/// This class manages the state of the ParentHomeScreen, including the
/// current parentHomeModelObj
class ParentHomeController extends GetxController {TextEditingController searchController = TextEditingController();

Rx<ParentHomeModel> parentHomeModelObj = ParentHomeModel().obs;

@override void onClose() { super.onClose(); searchController.dispose(); } 
 }
