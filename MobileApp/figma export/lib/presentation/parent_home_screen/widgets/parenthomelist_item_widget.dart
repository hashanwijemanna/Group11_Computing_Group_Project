import '../controller/parent_home_controller.dart';
import '../models/parenthomelist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:thamal_s_application7/core/app_export.dart';

// ignore: must_be_immutable
class ParenthomelistItemWidget extends StatelessWidget {
  ParenthomelistItemWidget(
    this.parenthomelistItemModelObj, {
    Key? key,
    this.onTapImgLock,
  }) : super(
          key: key,
        );

  ParenthomelistItemModel parenthomelistItemModelObj;

  var controller = Get.find<ParentHomeController>();

  VoidCallback? onTapImgLock;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 16.adaptSize,
      width: 16.adaptSize,
      margin: EdgeInsets.only(
        top: 2.v,
        bottom: 6.v,
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: parenthomelistItemModelObj.lock!.value,
              height: 16.adaptSize,
              width: 16.adaptSize,
              alignment: Alignment.center,
              onTap: () {
                onTapImgLock!.call();
              },
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: 16.adaptSize,
              width: 16.adaptSize,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Obx(
                    () => CustomImageView(
                      imagePath: parenthomelistItemModelObj.lock1!.value,
                      height: 16.adaptSize,
                      width: 16.adaptSize,
                      alignment: Alignment.center,
                    ),
                  ),
                  Obx(
                    () => CustomImageView(
                      imagePath: parenthomelistItemModelObj.contrast!.value,
                      height: 16.adaptSize,
                      width: 16.adaptSize,
                      alignment: Alignment.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
