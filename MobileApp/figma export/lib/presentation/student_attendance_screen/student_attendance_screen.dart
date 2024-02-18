import 'controller/student_attendance_controller.dart';
import 'package:flutter/material.dart';
import 'package:thamal_s_application7/core/app_export.dart';
import 'package:thamal_s_application7/widgets/app_bar/appbar_leading_image.dart';
import 'package:thamal_s_application7/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class StudentAttendanceScreen extends GetWidget<StudentAttendanceController> {
  const StudentAttendanceScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 5.v),
          child: Column(
            children: [
              Text(
                "lbl_profile".tr,
                style: theme.textTheme.titleLarge,
              ),
              SizedBox(height: 35.v),
              Container(
                height: 116.adaptSize,
                width: 116.adaptSize,
                padding: EdgeInsets.all(28.h),
                decoration: AppDecoration.fillBlueGray.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder58,
                ),
                child: CustomImageView(
                  imagePath: ImageConstant.imgSettingsBlue800,
                  height: 60.adaptSize,
                  width: 60.adaptSize,
                  alignment: Alignment.center,
                ),
              ),
              SizedBox(height: 56.v),
              SizedBox(
                width: 136.h,
                child: Text(
                  "msg_attendance_maker".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.headlineSmall,
                ),
              ),
              SizedBox(height: 15.v),
              CustomImageView(
                imagePath: ImageConstant.imgRectangle23120x120,
                height: 120.adaptSize,
                width: 120.adaptSize,
                radius: BorderRadius.circular(
                  5.h,
                ),
              ),
              SizedBox(height: 39.v),
              CustomImageView(
                imagePath: ImageConstant.imgQrcodeScan,
                height: 40.adaptSize,
                width: 40.adaptSize,
              ),
              SizedBox(height: 4.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 49.h),
                  child: Text(
                    "lbl_scan".tr,
                    style: CustomTextStyles.bodyMediumPrimary,
                  ),
                ),
              ),
              SizedBox(height: 69.v),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgRectangle2450x50,
                    height: 50.adaptSize,
                    width: 50.adaptSize,
                    radius: BorderRadius.circular(
                      5.h,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 14.h,
                      top: 18.v,
                      bottom: 18.v,
                    ),
                    child: Text(
                      "lbl_attendance".tr,
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildLockRow(),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: 39.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgMegaphone,
        margin: EdgeInsets.only(
          left: 21.h,
          top: 16.v,
          bottom: 28.v,
        ),
      ),
      actions: [
        Container(
          height: 40.adaptSize,
          width: 40.adaptSize,
          margin: EdgeInsets.symmetric(
            horizontal: 10.h,
            vertical: 8.v,
          ),
          decoration: BoxDecoration(
            color: appTheme.blueGray100,
            borderRadius: BorderRadius.circular(
              20.h,
            ),
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildLockRow() {
    return Padding(
      padding: EdgeInsets.only(
        left: 14.h,
        right: 10.h,
        bottom: 8.v,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgLock,
            height: 16.adaptSize,
            width: 16.adaptSize,
            margin: EdgeInsets.only(
              top: 2.v,
              bottom: 6.v,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgBellRing,
            height: 24.adaptSize,
            width: 24.adaptSize,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgHome,
            height: 17.v,
            width: 20.h,
            margin: EdgeInsets.only(
              top: 2.v,
              bottom: 5.v,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgBus,
            height: 24.adaptSize,
            width: 24.adaptSize,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgFacebook,
            height: 18.v,
            width: 22.h,
            margin: EdgeInsets.only(
              top: 2.v,
              bottom: 3.v,
            ),
          ),
        ],
      ),
    );
  }
}
