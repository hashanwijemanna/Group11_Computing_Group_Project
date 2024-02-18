import 'controller/reports_controller.dart';
import 'package:flutter/material.dart';
import 'package:thamal_s_application7/core/app_export.dart';
import 'package:thamal_s_application7/presentation/feedbacks_page/feedbacks_page.dart';
import 'package:thamal_s_application7/widgets/app_bar/custom_app_bar.dart';
import 'package:thamal_s_application7/widgets/custom_bottom_bar.dart';
import 'package:thamal_s_application7/widgets/custom_elevated_button.dart';
import 'package:thamal_s_application7/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class ReportsScreen extends GetWidget<ReportsController> {
  const ReportsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 10.h,
            vertical: 11.v,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildSearchRow(),
              SizedBox(height: 16.v),
              _buildViewRow(),
              SizedBox(height: 15.v),
              Container(
                height: 280.v,
                width: 340.h,
                decoration: BoxDecoration(
                  color: appTheme.blueGray100,
                ),
              ),
              SizedBox(height: 10.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "lbl_report_tittle".tr,
                  style: CustomTextStyles.bodyMediumRegular13,
                ),
              ),
              SizedBox(height: 5.v),
              Container(
                height: 35.v,
                width: 340.h,
                decoration: BoxDecoration(
                  color: appTheme.blueGray100,
                ),
              ),
              SizedBox(height: 1.v),
              _buildAdditionalCommentsRow(),
              SizedBox(height: 6.v),
              Container(
                height: 153.v,
                width: 340.h,
                decoration: BoxDecoration(
                  color: appTheme.blueGray100,
                ),
              ),
              SizedBox(height: 14.v),
              CustomElevatedButton(
                text: "lbl_submit".tr,
                margin: EdgeInsets.symmetric(horizontal: 15.h),
                buttonStyle: CustomButtonStyles.fillPrimary,
                buttonTextStyle: CustomTextStyles.headlineSmallInterWhiteA700,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.h),
          child: _buildBottomBar(),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
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
  Widget _buildSearchRow() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(right: 12.h),
        child: Row(
          children: [
            Expanded(
              child: CustomSearchView(
                controller: controller.searchController,
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgRewind,
              height: 17.adaptSize,
              width: 17.adaptSize,
              margin: EdgeInsets.only(
                left: 10.h,
                top: 9.v,
                bottom: 8.v,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildViewRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 20.v,
          width: 140.h,
          margin: EdgeInsets.symmetric(vertical: 5.v),
          decoration: BoxDecoration(
            color: appTheme.blueGray100,
            borderRadius: BorderRadius.circular(
              10.h,
            ),
          ),
        ),
        SizedBox(
          height: 30.v,
          child: VerticalDivider(
            width: 1.h,
            thickness: 1.v,
          ),
        ),
        Container(
          height: 20.v,
          width: 140.h,
          margin: EdgeInsets.symmetric(vertical: 5.v),
          decoration: BoxDecoration(
            color: appTheme.blueGray100,
            borderRadius: BorderRadius.circular(
              10.h,
            ),
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildAdditionalCommentsRow() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(right: 14.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "msg_additional_comments".tr,
              style: CustomTextStyles.bodyMediumRegular13,
            ),
            CustomImageView(
              imagePath: ImageConstant.imgUser,
              height: 11.v,
              width: 84.h,
              margin: EdgeInsets.only(top: 5.v),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Get.toNamed(getCurrentRoute(type), id: 1);
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Lock:
        return AppRoutes.feedbacksPage;
      case BottomBarEnum.Bellring:
        return "/";
      case BottomBarEnum.Home:
        return "/";
      case BottomBarEnum.Bus:
        return "/";
      case BottomBarEnum.Facebook:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.feedbacksPage:
        return FeedbacksPage();
      default:
        return DefaultWidget();
    }
  }
}
