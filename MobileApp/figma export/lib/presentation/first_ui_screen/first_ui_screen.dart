import 'controller/first_ui_controller.dart';
import 'package:flutter/material.dart';
import 'package:thamal_s_application7/core/app_export.dart';

// ignore_for_file: must_be_immutable
class FirstUiScreen extends GetWidget<FirstUiController> {
  const FirstUiScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            color: appTheme.whiteA700,
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgFirstUi,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: SizedBox(
            width: double.maxFinite,
            child: Container(
              height: 100.adaptSize,
              width: 100.adaptSize,
              padding: EdgeInsets.symmetric(vertical: 8.v),
              decoration: AppDecoration.fillBlueGray.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder30,
              ),
              child: CustomImageView(
                imagePath: ImageConstant.imgWhatsappImage,
                height: 83.v,
                width: 100.h,
                alignment: Alignment.center,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
