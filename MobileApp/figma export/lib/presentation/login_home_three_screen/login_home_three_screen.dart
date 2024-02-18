import 'controller/login_home_three_controller.dart';
import 'package:flutter/material.dart';
import 'package:thamal_s_application7/core/app_export.dart';

// ignore_for_file: must_be_immutable
class LoginHomeThreeScreen extends GetWidget<LoginHomeThreeController> {
  const LoginHomeThreeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.blue500,
        body: Container(
          height: SizeUtils.height,
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 15.h,
            vertical: 151.v,
          ),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  width: 330.h,
                  decoration: AppDecoration.outlineOnPrimaryContainer1,
                  child: Text(
                    "msg_welcome_to_net".tr,
                    maxLines: null,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.headlineSmallWhiteA700,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 100.adaptSize,
                  width: 100.adaptSize,
                  margin: EdgeInsets.only(bottom: 5.v),
                  decoration: AppDecoration.fillBlueGray.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder30,
                  ),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgWhatsappImage,
                    height: 83.v,
                    width: 100.h,
                    alignment: Alignment.topCenter,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
