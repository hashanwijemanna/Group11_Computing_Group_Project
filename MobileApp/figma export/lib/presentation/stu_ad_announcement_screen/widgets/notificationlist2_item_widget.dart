import '../controller/stu_ad_announcement_controller.dart';
import '../models/notificationlist2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:thamal_s_application7/core/app_export.dart';

// ignore: must_be_immutable
class Notificationlist2ItemWidget extends StatelessWidget {
  Notificationlist2ItemWidget(
    this.notificationlist2ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Notificationlist2ItemModel notificationlist2ItemModelObj;

  var controller = Get.find<StuAdAnnouncementController>();

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
              notificationlist2ItemModelObj.notificationText!.value,
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
