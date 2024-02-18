import '../controller/bus_owner_home_controller.dart';
import '../models/mapgrid_item_model.dart';
import 'package:flutter/material.dart';
import 'package:thamal_s_application7/core/app_export.dart';

// ignore: must_be_immutable
class MapgridItemWidget extends StatelessWidget {
  MapgridItemWidget(
    this.mapgridItemModelObj, {
    Key? key,
    this.onTapImgMapImage,
  }) : super(
          key: key,
        );

  MapgridItemModel mapgridItemModelObj;

  var controller = Get.find<BusOwnerHomeController>();

  VoidCallback? onTapImgMapImage;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(
          () => CustomImageView(
            imagePath: mapgridItemModelObj.mapImage!.value,
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
        SizedBox(height: 1.v),
        Obx(
          () => Text(
            mapgridItemModelObj.mapText!.value,
            style: CustomTextStyles.bodySmallLight,
          ),
        ),
      ],
    );
  }
}
