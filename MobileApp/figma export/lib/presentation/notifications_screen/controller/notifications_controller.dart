import 'package:thamal_s_application7/core/app_export.dart';import 'package:thamal_s_application7/presentation/notifications_screen/models/notifications_model.dart';import 'package:flutter/material.dart';/// A controller class for the NotificationsScreen.
///
/// This class manages the state of the NotificationsScreen, including the
/// current notificationsModelObj
class NotificationsController extends GetxController {TextEditingController searchController = TextEditingController();

Rx<NotificationsModel> notificationsModelObj = NotificationsModel().obs;

@override void onClose() { super.onClose(); searchController.dispose(); } 
 }
