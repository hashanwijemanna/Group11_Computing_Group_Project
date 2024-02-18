import 'controller/login_home_controller.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:thamal_s_application7/core/app_export.dart';

// ignore_for_file: must_be_immutable
class LoginHomeScreen extends GetWidget<LoginHomeController> {
  const LoginHomeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.pinkA200,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 17.h,
            vertical: 29.v,
          ),
          child: Column(
            children: [
              SizedBox(
                height: 10.v,
                child: AnimatedSmoothIndicator(
                  activeIndex: 0,
                  count: 2,
                  effect: ScrollingDotsEffect(
                    activeDotColor: Color(0X1212121D),
                    dotHeight: 10.v,
                  ),
                ),
              ),
              Spacer(
                flex: 39,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgUnsplashOalh2mojuuk,
                height: 200.v,
                width: 300.h,
              ),
              SizedBox(height: 26.v),
              Container(
                width: 256.h,
                margin: EdgeInsets.symmetric(horizontal: 35.h),
                decoration: AppDecoration.outlineOnPrimaryContainer1,
                child: Text(
                  "msg_feedback_and_reporting".tr,
                  maxLines: null,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.headlineSmallWhiteA700,
                ),
              ),
              SizedBox(height: 39.v),
              Container(
                width: 326.h,
                decoration: AppDecoration.outlineOnPrimaryContainer1,
                child: Text(
                  "msg_implement_a_feedback".tr,
                  maxLines: null,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodyMediumWhiteA700Regular,
                ),
              ),
              Spacer(
                flex: 60,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
