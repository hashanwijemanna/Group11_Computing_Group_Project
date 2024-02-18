import '../controller/parent_home_controller.dart';
import '../models/maptextgrid_item_model.dart';
import 'package:flutter/material.dart';
import 'package:thamal_s_application7/core/app_export.dart';

// ignore: must_be_immutable
class MaptextgridItemWidget extends StatelessWidget {
  MaptextgridItemWidget(
    this.maptextgridItemModelObj, {
    Key? key,
    this.onTapImgMapImage,
  }) : super(
          key: key,
        );

  MaptextgridItemModel maptextgridItemModelObj;

  var controller = Get.find<ParentHomeController>();

  VoidCallback? onTapImgMapImage;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(
          () => CustomImageView(
            imagePath: maptextgridItemModelObj.mapImage!.value,
            height: 233.v,
            width: 230.h,
            radius: BorderRadius.circular(
              10.h,
            ),
            onTap: () {
              onTapImgMapImage!.call();
            },
          ),
        ),
        Obx(
          () => Text(
            maptextgridItemModelObj.mapText!.value,
            style: CustomTextStyles.bodySmallLight,
          ),
        ),
      ],
    );
  }
}
