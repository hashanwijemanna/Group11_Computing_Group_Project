import 'controller/driver_details_each_controller.dart';
import 'package:flutter/material.dart';
import 'package:thamal_s_application7/core/app_export.dart';
import 'package:thamal_s_application7/widgets/custom_rating_bar.dart';
import 'package:thamal_s_application7/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class DriverDetailsEachScreen extends GetWidget<DriverDetailsEachController> {
  const DriverDetailsEachScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 4.h,
            vertical: 15.v,
          ),
          child: Column(
            children: [
              _buildSearchRow(),
              SizedBox(height: 43.v),
              Container(
                height: 140.v,
                width: 200.h,
                decoration: BoxDecoration(
                  color: appTheme.blueGray100,
                  borderRadius: BorderRadius.circular(
                    5.h,
                  ),
                ),
              ),
              SizedBox(height: 10.v),
              CustomRatingBar(
                initialRating: 5,
              ),
              SizedBox(height: 46.v),
              _buildDriverNameRow(),
              SizedBox(height: 14.v),
              _buildEmailRow(),
              SizedBox(height: 14.v),
              _buildMobileRow(),
              SizedBox(height: 14.v),
              _buildLicensePlateNumberRow(),
              SizedBox(height: 15.v),
              _buildBusIdRow(),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildLockRow(),
      ),
    );
  }

  /// Section Widget
  Widget _buildSearchRow() {
    return Padding(
      padding: EdgeInsets.only(right: 6.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                top: 3.v,
                bottom: 2.v,
              ),
              child: CustomSearchView(
                controller: controller.searchController,
              ),
            ),
          ),
          Container(
            height: 40.adaptSize,
            width: 40.adaptSize,
            margin: EdgeInsets.only(left: 6.h),
            decoration: BoxDecoration(
              color: appTheme.blueGray100,
              borderRadius: BorderRadius.circular(
                20.h,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDriverNameRow() {
    return Padding(
      padding: EdgeInsets.only(
        left: 16.h,
        right: 10.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "lbl_driver_s_name".tr,
            style: theme.textTheme.bodySmall,
          ),
          Container(
            height: 11.v,
            width: 199.h,
            margin: EdgeInsets.only(top: 2.v),
            decoration: BoxDecoration(
              color: appTheme.blueGray100,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildEmailRow() {
    return Padding(
      padding: EdgeInsets.only(
        left: 16.h,
        right: 10.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "lbl_email".tr,
            style: theme.textTheme.bodySmall,
          ),
          Container(
            height: 11.v,
            width: 199.h,
            decoration: BoxDecoration(
              color: appTheme.blueGray100,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildMobileRow() {
    return Padding(
      padding: EdgeInsets.only(
        left: 16.h,
        right: 10.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "lbl_mobile".tr,
            style: theme.textTheme.bodySmall,
          ),
          Container(
            height: 11.v,
            width: 199.h,
            decoration: BoxDecoration(
              color: appTheme.blueGray100,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildLicensePlateNumberRow() {
    return Padding(
      padding: EdgeInsets.only(
        left: 16.h,
        right: 10.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "msg_licences_plate_number".tr,
            style: theme.textTheme.bodySmall,
          ),
          Container(
            height: 11.v,
            width: 199.h,
            margin: EdgeInsets.only(left: 13.h),
            decoration: BoxDecoration(
              color: appTheme.blueGray100,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBusIdRow() {
    return Padding(
      padding: EdgeInsets.only(
        left: 16.h,
        right: 10.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 13.v,
            width: 66.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "lbl_bus_group_id".tr,
                    style: theme.textTheme.bodySmall,
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "lbl_bus_group_id".tr,
                    style: theme.textTheme.bodySmall,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 11.v,
            width: 199.h,
            margin: EdgeInsets.only(bottom: 2.v),
            decoration: BoxDecoration(
              color: appTheme.blueGray100,
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
