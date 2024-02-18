import '../controller/student_dashboard_controller.dart';
import '../models/notificationgrid_item_model.dart';
import 'package:flutter/material.dart';
import 'package:thamal_s_application7/core/app_export.dart';

// ignore: must_be_immutable
class NotificationgridItemWidget extends StatelessWidget {
  NotificationgridItemWidget(
    this.notificationgridItemModelObj, {
    Key? key,
    this.onTapImgNotificationImage,
  }) : super(
          key: key,
        );

  NotificationgridItemModel notificationgridItemModelObj;

  var controller = Get.find<StudentDashboardController>();

  VoidCallback? onTapImgNotificationImage;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(
          () => CustomImageView(
            imagePath: notificationgridItemModelObj.notificationImage!.value,
            height: 100.adaptSize,
            width: 100.adaptSize,
            radius: BorderRadius.circular(
              10.h,
            ),
            onTap: () {
              onTapImgNotificationImage!.call();
            },
          ),
        ),
        Obx(
          () => Text(
            notificationgridItemModelObj.notificationText!.value,
            style: theme.textTheme.bodySmall,
          ),
        ),
      ],
    );
  }
}
