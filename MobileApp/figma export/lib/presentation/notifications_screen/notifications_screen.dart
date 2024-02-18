import '../notifications_screen/widgets/notificationlist1_item_widget.dart';
import 'controller/notifications_controller.dart';
import 'models/notificationlist1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:thamal_s_application7/core/app_export.dart';
import 'package:thamal_s_application7/widgets/app_bar/custom_app_bar.dart';
import 'package:thamal_s_application7/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class NotificationsScreen extends GetWidget<NotificationsController> {
  const NotificationsScreen({Key? key})
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildSearchRow(),
              SizedBox(height: 16.v),
              _buildMyAlertsRow(),
              SizedBox(height: 45.v),
              _buildNotificationList(),
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
  Widget _buildMyAlertsRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 140.h,
          margin: EdgeInsets.symmetric(vertical: 5.v),
          padding: EdgeInsets.symmetric(
            horizontal: 30.h,
            vertical: 1.v,
          ),
          decoration: AppDecoration.fillBlueGray.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder10,
          ),
          child: Text(
            "lbl_my_alerts".tr,
            style: CustomTextStyles.bodySmall12,
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
          margin: EdgeInsets.symmetric(vertical: 5.v),
          padding: EdgeInsets.symmetric(
            horizontal: 5.h,
            vertical: 2.v,
          ),
          decoration: AppDecoration.fillBlueGray.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder10,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "lbl_notifications".tr,
                style: CustomTextStyles.bodySmall12,
              ),
              Container(
                height: 10.adaptSize,
                width: 10.adaptSize,
                margin: EdgeInsets.only(
                  left: 17.h,
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
      ],
    );
  }

  /// Section Widget
  Widget _buildNotificationList() {
    return Padding(
      padding: EdgeInsets.only(right: 5.h),
      child: Obx(
        () => ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 24.v,
            );
          },
          itemCount: controller.notificationsModelObj.value
              .notificationlist1ItemList.value.length,
          itemBuilder: (context, index) {
            Notificationlist1ItemModel model = controller.notificationsModelObj
                .value.notificationlist1ItemList.value[index];
            return Notificationlist1ItemWidget(
              model,
            );
          },
        ),
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
