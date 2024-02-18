import '../controller/my_alerts_controller.dart';
import '../models/notificationlist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:thamal_s_application7/core/app_export.dart';

// ignore: must_be_immutable
class NotificationlistItemWidget extends StatelessWidget {
  NotificationlistItemWidget(
    this.notificationlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  NotificationlistItemModel notificationlistItemModelObj;

  var controller = Get.find<MyAlertsController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 40.adaptSize,
          width: 40.adaptSize,
          decoration: BoxDecoration(
            color: appTheme.blueGray100,
            borderRadius: BorderRadius.circular(
              20.h,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 14.v,
            bottom: 10.v,
          ),
          child: Obx(
            () => Text(
              notificationlistItemModelObj.notificationText!.value,
              style: CustomTextStyles.bodySmall12,
            ),
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgStarOutline,
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.symmetric(vertical: 8.v),
        ),
      ],
    );
  }
}
