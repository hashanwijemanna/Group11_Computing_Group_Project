import 'controller/feedbacks_controller.dart';
import 'models/feedbacks_model.dart';
import 'package:flutter/material.dart';
import 'package:thamal_s_application7/core/app_export.dart';
import 'package:thamal_s_application7/widgets/app_bar/custom_app_bar.dart';
import 'package:thamal_s_application7/widgets/custom_elevated_button.dart';
import 'package:thamal_s_application7/widgets/custom_rating_bar.dart';
import 'package:thamal_s_application7/widgets/custom_search_view.dart';
import 'package:thamal_s_application7/widgets/custom_text_form_field.dart';

class FeedbacksPage extends StatelessWidget {
  FeedbacksPage({Key? key})
      : super(
          key: key,
        );

  FeedbacksController controller =
      Get.put(FeedbacksController(FeedbacksModel().obs));

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
            crossAxisAlignment: CrossAxisAlignment.start,
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
              Text(
                "msg_please_rate_your".tr,
                style: CustomTextStyles.bodyMediumRegular13,
              ),
              SizedBox(height: 5.v),
              CustomRatingBar(
                alignment: Alignment.center,
                initialRating: 0,
                itemSize: 26,
              ),
              SizedBox(height: 10.v),
              Text(
                "msg_additional_comments".tr,
                style: CustomTextStyles.bodyMediumRegular13,
              ),
              SizedBox(height: 6.v),
              CustomTextFormField(
                controller: controller.commentController,
                textInputAction: TextInputAction.done,
                borderDecoration: TextFormFieldStyleHelper.fillBlueGray,
                fillColor: appTheme.blueGray100,
              ),
              SizedBox(height: 14.v),
              CustomElevatedButton(
                text: "lbl_submit".tr,
                margin: EdgeInsets.symmetric(horizontal: 15.h),
                buttonStyle: CustomButtonStyles.fillPrimary,
                buttonTextStyle: CustomTextStyles.headlineSmallInterWhiteA700,
                alignment: Alignment.center,
              ),
              SizedBox(height: 5.v),
            ],
          ),
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
}
