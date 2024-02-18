import 'controller/app_navigation_controller.dart';
import 'package:flutter/material.dart';
import 'package:thamal_s_application7/core/app_export.dart';

// ignore_for_file: must_be_immutable
class AppNavigationScreen extends GetWidget<AppNavigationController> {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          screenTitle: "Sign-in".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signInScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Bus Details".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.busDetailsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Bus Details-each".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.busDetailsEachScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Driver Details".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.driverDetailsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Driver Details-each".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.driverDetailsEachScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Feedbacks - Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.feedbacksContainerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Reports".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.reportsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "My Alerts".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.myAlertsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Map- Student & Parent".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.mapStudentParentScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Map -Bus owner & bus driver".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.mapBusOwnerBusDriverScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Route details".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.routeDetailsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Notifications".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.notificationsScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "First UI".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.firstUiScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Login/Home Three".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.loginHomeThreeScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Login/Home Two".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.loginHomeTwoScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Login/Home One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.loginHomeOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Login/Home Four".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.loginHomeFourScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Login/Home".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.loginHomeScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Sign-in One".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signInOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Student-Dashboard".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.studentDashboardScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Parent-Home".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.parentHomeScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Student Administration-Home".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.studentAdministrationHomeScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Bus Owner-Home".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.busOwnerHomeScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Bus Driver-Home".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.busDriverHomeScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Student Attendance".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.studentAttendanceScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Sign-up/student".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signUpStudentScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Sign-up/Parent".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signUpParentScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Sign-up/Admin".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signUpAdminScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Stu.Ad-Announcement One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.stuAdAnnouncementOneScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Stu.Ad-Announcement".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.stuAdAnnouncementScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Student-Profile".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.studentProfileScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Parent-Profile".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.parentProfileScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Student Admin-Profile".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.studentAdminProfileScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Bus owner-Profile".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.busOwnerProfileScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Bus Driver-Profile".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.busDriverProfileScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "My Activity-Student".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.myActivityStudentScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Sign-up/Bus Owner".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signUpBusOwnerScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Sign-up/Bus Driver".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signUpBusDriverScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation() {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle({
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    Get.toNamed(routeName);
  }
}
