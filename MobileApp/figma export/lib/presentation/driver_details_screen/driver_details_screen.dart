import 'controller/driver_details_controller.dart';
import 'package:flutter/material.dart';
import 'package:thamal_s_application7/core/app_export.dart';
import 'package:thamal_s_application7/widgets/app_bar/custom_app_bar.dart';
import 'package:thamal_s_application7/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class DriverDetailsScreen extends GetWidget<DriverDetailsController> {
  const DriverDetailsScreen({Key? key})
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
            children: [
              _buildSearchRow(),
              SizedBox(height: 48.v),
              _buildDriverDetailsRow1(),
              SizedBox(height: 39.v),
              _buildDriverDetailsRow2(),
              SizedBox(height: 49.v),
              _buildDriverDetailsRow3(),
              SizedBox(height: 49.v),
              _buildDriverDetailsRow4(),
              SizedBox(height: 49.v),
              _buildDriverDetailsRow5(),
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
  Widget _buildDriverDetailsRow1() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 19.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(right: 23.h),
              child: Column(
                children: [
                  SizedBox(
                    height: 70.adaptSize,
                    width: 70.adaptSize,
                    child: Stack(
                      alignment: Alignment.topLeft,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: 70.adaptSize,
                            width: 70.adaptSize,
                            decoration: BoxDecoration(
                              color: appTheme.blueGray100,
                              borderRadius: BorderRadius.circular(
                                5.h,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 1.h),
                            child: Text(
                              "lbl_driver_1".tr,
                              style: theme.textTheme.bodySmall,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 4.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgRating,
                    height: 5.v,
                    width: 42.h,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 23.h),
              child: Column(
                children: [
                  Container(
                    height: 70.adaptSize,
                    width: 70.adaptSize,
                    decoration: BoxDecoration(
                      color: appTheme.blueGray100,
                      borderRadius: BorderRadius.circular(
                        5.h,
                      ),
                    ),
                  ),
                  SizedBox(height: 4.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgRating,
                    height: 5.v,
                    width: 42.h,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 23.h),
              child: Column(
                children: [
                  Container(
                    height: 70.adaptSize,
                    width: 70.adaptSize,
                    decoration: BoxDecoration(
                      color: appTheme.blueGray100,
                      borderRadius: BorderRadius.circular(
                        5.h,
                      ),
                    ),
                  ),
                  SizedBox(height: 4.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgRating,
                    height: 5.v,
                    width: 42.h,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDriverDetailsRow2() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 19.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 70.adaptSize,
            width: 70.adaptSize,
            decoration: BoxDecoration(
              color: appTheme.blueGray100,
              borderRadius: BorderRadius.circular(
                5.h,
              ),
            ),
          ),
          Container(
            height: 70.adaptSize,
            width: 70.adaptSize,
            decoration: BoxDecoration(
              color: appTheme.blueGray100,
              borderRadius: BorderRadius.circular(
                5.h,
              ),
            ),
          ),
          Container(
            height: 70.adaptSize,
            width: 70.adaptSize,
            decoration: BoxDecoration(
              color: appTheme.blueGray100,
              borderRadius: BorderRadius.circular(
                5.h,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDriverDetailsRow3() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 19.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 70.adaptSize,
            width: 70.adaptSize,
            decoration: BoxDecoration(
              color: appTheme.blueGray100,
              borderRadius: BorderRadius.circular(
                5.h,
              ),
            ),
          ),
          Container(
            height: 70.adaptSize,
            width: 70.adaptSize,
            decoration: BoxDecoration(
              color: appTheme.blueGray100,
              borderRadius: BorderRadius.circular(
                5.h,
              ),
            ),
          ),
          Container(
            height: 70.adaptSize,
            width: 70.adaptSize,
            decoration: BoxDecoration(
              color: appTheme.blueGray100,
              borderRadius: BorderRadius.circular(
                5.h,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDriverDetailsRow4() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 19.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 70.adaptSize,
            width: 70.adaptSize,
            decoration: BoxDecoration(
              color: appTheme.blueGray100,
              borderRadius: BorderRadius.circular(
                5.h,
              ),
            ),
          ),
          Container(
            height: 70.adaptSize,
            width: 70.adaptSize,
            decoration: BoxDecoration(
              color: appTheme.blueGray100,
              borderRadius: BorderRadius.circular(
                5.h,
              ),
            ),
          ),
          Container(
            height: 70.adaptSize,
            width: 70.adaptSize,
            decoration: BoxDecoration(
              color: appTheme.blueGray100,
              borderRadius: BorderRadius.circular(
                5.h,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDriverDetailsRow5() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 19.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 70.adaptSize,
            width: 70.adaptSize,
            decoration: BoxDecoration(
              color: appTheme.blueGray100,
              borderRadius: BorderRadius.circular(
                5.h,
              ),
            ),
          ),
          Container(
            height: 70.adaptSize,
            width: 70.adaptSize,
            decoration: BoxDecoration(
              color: appTheme.blueGray100,
              borderRadius: BorderRadius.circular(
                5.h,
              ),
            ),
          ),
          Container(
            height: 70.adaptSize,
            width: 70.adaptSize,
            decoration: BoxDecoration(
              color: appTheme.blueGray100,
              borderRadius: BorderRadius.circular(
                5.h,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildLockRow() {
    return Padding(
      padding: EdgeInsets.only(
        left: 12.h,
        right: 12.h,
        bottom: 10.v,
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
