import '../student_dashboard_screen/widgets/notificationgrid_item_widget.dart';import 'controller/student_dashboard_controller.dart';import 'models/notificationgrid_item_model.dart';import 'package:flutter/material.dart';import 'package:thamal_s_application7/core/app_export.dart';import 'package:thamal_s_application7/widgets/app_bar/custom_app_bar.dart';import 'package:thamal_s_application7/widgets/custom_search_view.dart';class StudentDashboardScreen extends GetWidget<StudentDashboardController> {const StudentDashboardScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(extendBody: true, extendBodyBehindAppBar: true, resizeToAvoidBottomInset: false, appBar: _buildAppBar(), body: Container(width: SizeUtils.width, height: SizeUtils.height, padding: EdgeInsets.only(top: 56.v, bottom: 24.v), decoration: BoxDecoration(image: DecorationImage(image: AssetImage(ImageConstant.imgGroup430), fit: BoxFit.cover)), child: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 5.h, vertical: 11.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [_buildSearchRow(), SizedBox(height: 33.v), _buildMapRow(), SizedBox(height: 29.v), _buildNotificationGrid()]))), bottomNavigationBar: _buildContrastRow())); } 
/// Section Widget
PreferredSizeWidget _buildAppBar() { return CustomAppBar(actions: [Container(height: 40.adaptSize, width: 40.adaptSize, margin: EdgeInsets.symmetric(horizontal: 10.h, vertical: 8.v), decoration: BoxDecoration(color: appTheme.amberA200, borderRadius: BorderRadius.circular(20.h)))]); } 
/// Section Widget
Widget _buildSearchRow() { return Padding(padding: EdgeInsets.only(left: 5.h, right: 17.h), child: Row(children: [Expanded(child: CustomSearchView(controller: controller.searchController, borderDecoration: SearchViewStyleHelper.fillLightBlueA, fillColor: appTheme.lightBlueA100)), CustomImageView(imagePath: ImageConstant.imgRewindBlue800, height: 17.adaptSize, width: 17.adaptSize, margin: EdgeInsets.only(left: 10.h, top: 9.v, bottom: 8.v))])); } 
/// Section Widget
Widget _buildMapRow() { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Column(children: [CustomImageView(imagePath: ImageConstant.imgRectangle16, height: 233.v, width: 230.h, radius: BorderRadius.circular(10.h), onTap: () {onTapImgImage();}), SizedBox(height: 1.v), Text("lbl_map".tr, style: CustomTextStyles.bodySmallLight)]), Column(children: [CustomImageView(imagePath: ImageConstant.imgRectangle17, height: 100.adaptSize, width: 100.adaptSize, radius: BorderRadius.circular(10.h), onTap: () {onTapImgImage1();}), Text("lbl_my_activity".tr, style: theme.textTheme.bodySmall), SizedBox(height: 19.v), CustomImageView(imagePath: ImageConstant.imgRectangle21, height: 100.adaptSize, width: 100.adaptSize, radius: BorderRadius.circular(10.h), onTap: () {onTapImgImage2();}), Text("lbl_route_details".tr, style: theme.textTheme.bodySmall)])]); } 
/// Section Widget
Widget _buildNotificationGrid() { return Obx(() => GridView.builder(shrinkWrap: true, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(mainAxisExtent: 113.v, crossAxisCount: 3, mainAxisSpacing: 25.h, crossAxisSpacing: 25.h), physics: NeverScrollableScrollPhysics(), itemCount: controller.studentDashboardModelObj.value.notificationgridItemList.value.length, itemBuilder: (context, index) {NotificationgridItemModel model = controller.studentDashboardModelObj.value.notificationgridItemList.value[index]; return NotificationgridItemWidget(model, onTapImgNotificationImage: () {onTapImgNotificationImage();});})); } 
/// Section Widget
Widget _buildContrastRow() { return Padding(padding: EdgeInsets.only(left: 10.h, right: 14.h, bottom: 15.v), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [CustomImageView(imagePath: ImageConstant.imgContrast, height: 16.adaptSize, width: 16.adaptSize, margin: EdgeInsets.only(top: 2.v, bottom: 6.v), onTap: () {onTapImgContrast();}), CustomImageView(imagePath: ImageConstant.imgBellRingBlue800, height: 24.adaptSize, width: 24.adaptSize), CustomImageView(imagePath: ImageConstant.imgHomeBlue800, height: 17.v, width: 20.h, margin: EdgeInsets.only(top: 2.v, bottom: 5.v)), CustomImageView(imagePath: ImageConstant.imgBusBlue800, height: 24.adaptSize, width: 24.adaptSize, onTap: () {onTapImgBus();}), CustomImageView(imagePath: ImageConstant.imgFacebookBlue800, height: 18.v, width: 22.h, margin: EdgeInsets.only(top: 2.v, bottom: 3.v), onTap: () {onTapImgFacebook();})])); } 
/// Navigates to the mapStudentParentScreen when the action is triggered.
onTapImgImage() { Get.toNamed(AppRoutes.mapStudentParentScreen); } 
/// Navigates to the myActivityStudentScreen when the action is triggered.
onTapImgImage1() { Get.toNamed(AppRoutes.myActivityStudentScreen); } 
/// Navigates to the routeDetailsScreen when the action is triggered.
onTapImgImage2() { Get.toNamed(AppRoutes.routeDetailsScreen); } 
/// Navigates to the studentProfileScreen when the action is triggered.
onTapImgContrast() { Get.toNamed(AppRoutes.studentProfileScreen); } 
/// Navigates to the busDetailsScreen when the action is triggered.
onTapImgBus() { Get.toNamed(AppRoutes.busDetailsScreen); } 
/// Navigates to the studentAttendanceScreen when the action is triggered.
onTapImgFacebook() { Get.toNamed(AppRoutes.studentAttendanceScreen); } 
/// Navigates to the reportsScreen when the action is triggered.
onTapImgNotificationImage() { Get.toNamed(AppRoutes.reportsScreen, ); } 
 }
