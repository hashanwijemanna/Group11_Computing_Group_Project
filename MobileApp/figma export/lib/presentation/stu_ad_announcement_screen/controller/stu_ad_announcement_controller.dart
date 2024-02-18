import 'package:thamal_s_application7/core/app_export.dart';import 'package:thamal_s_application7/presentation/stu_ad_announcement_screen/models/stu_ad_announcement_model.dart';import 'package:flutter/material.dart';/// A controller class for the StuAdAnnouncementScreen.
///
/// This class manages the state of the StuAdAnnouncementScreen, including the
/// current stuAdAnnouncementModelObj
class StuAdAnnouncementController extends GetxController {TextEditingController searchController = TextEditingController();

Rx<StuAdAnnouncementModel> stuAdAnnouncementModelObj = StuAdAnnouncementModel().obs;

@override void onClose() { super.onClose(); searchController.dispose(); } 
 }
