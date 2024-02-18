import 'controller/stu_ad_announcement_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:thamal_s_application7/core/app_export.dart';
import 'package:thamal_s_application7/presentation/feedbacks_page/feedbacks_page.dart';
import 'package:thamal_s_application7/widgets/app_bar/custom_app_bar.dart';
import 'package:thamal_s_application7/widgets/custom_bottom_bar.dart';
import 'package:thamal_s_application7/widgets/custom_elevated_button.dart';
import 'package:thamal_s_application7/widgets/custom_search_view.dart';
import 'package:thamal_s_application7/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class StuAdAnnouncementOneScreen
    extends GetWidget<StuAdAnnouncementOneController> {
  const StuAdAnnouncementOneScreen({Key? key})
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
            horizontal: 8.h,
            vertical: 11.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildSearchRow(),
              SizedBox(height: 16.v),
              _buildNewAnnouncementRow(),
              SizedBox(height: 15.v),
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: 200.adaptSize,
                  width: 200.adaptSize,
                  decoration: BoxDecoration(
                    color: appTheme.blueGray100,
                    borderRadius: BorderRadius.circular(
                      10.h,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 52.v),
              Padding(
                padding: EdgeInsets.only(left: 78.h),
                child: Text(
                  "msg_announcement_tittle".tr,
                  style: CustomTextStyles.bodyMediumRegular13,
                ),
              ),
              SizedBox(height: 16.v),
              Container(
                height: 35.v,
                width: 340.h,
                decoration: BoxDecoration(
                  color: appTheme.blueGray100,
                  borderRadius: BorderRadius.circular(
                    10.h,
                  ),
                ),
              ),
              SizedBox(height: 14.v),
              Padding(
                padding: EdgeInsets.only(left: 78.h),
                child: Text(
                  "msg_additional_comments".tr,
                  style: CustomTextStyles.bodyMediumRegular13,
                ),
              ),
              SizedBox(height: 20.v),
              Padding(
                padding: EdgeInsets.only(left: 2.h),
                child: CustomTextFormField(
                  controller: controller.editTextController,
                  textInputAction: TextInputAction.done,
                  borderDecoration: TextFormFieldStyleHelper.fillBlueGrayTL10,
                  fillColor: appTheme.blueGray100,
                ),
              ),
              SizedBox(height: 14.v),
              CustomElevatedButton(
                text: "lbl_submit".tr,
                margin: EdgeInsets.symmetric(horizontal: 17.h),
                buttonStyle: CustomButtonStyles.fillPrimary,
                buttonTextStyle: CustomTextStyles.headlineSmallInterWhiteA700,
                alignment: Alignment.center,
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
    return Padding(
      padding: EdgeInsets.only(
        left: 2.h,
        right: 14.h,
      ),
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
    );
  }

  /// Section Widget
  Widget _buildNewAnnouncementRow() {
    return Padding(
      padding: EdgeInsets.only(left: 2.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 5.v),
            padding: EdgeInsets.symmetric(
              horizontal: 1.h,
              vertical: 2.v,
            ),
            decoration: AppDecoration.fillBlueGray.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "msg_new_announcement".tr,
                  style: CustomTextStyles.bodySmall12,
                ),
                Container(
                  height: 10.adaptSize,
                  width: 10.adaptSize,
                  margin: EdgeInsets.only(
                    left: 5.h,
                    top: 2.v,
                    bottom: 2.v,
                  ),
                  decoration: BoxDecoration(
                    color: appTheme.lightGreen500,
                    borderRadius: BorderRadius.circular(
                      5.h,
                    ),
                  ),
                ),
              ],
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
            width: 140.h,
            margin: EdgeInsets.symmetric(vertical: 5.v),
            padding: EdgeInsets.symmetric(
              horizontal: 23.h,
              vertical: 2.v,
            ),
            decoration: AppDecoration.fillBlueGray.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder10,
            ),
            child: Text(
              "lbl_announcements2".tr,
              style: CustomTextStyles.bodySmall12,
            ),
          ),
        ],
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
