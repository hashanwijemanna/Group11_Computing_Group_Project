import '../controller/bus_driver_home_controller.dart';
import '../models/mapgrid1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:thamal_s_application7/core/app_export.dart';

// ignore: must_be_immutable
class Mapgrid1ItemWidget extends StatelessWidget {
  Mapgrid1ItemWidget(
    this.mapgrid1ItemModelObj, {
    Key? key,
    this.onTapImgMapImage,
  }) : super(
          key: key,
        );

  Mapgrid1ItemModel mapgrid1ItemModelObj;

  var controller = Get.find<BusDriverHomeController>();

  VoidCallback? onTapImgMapImage;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(
          () => CustomImageView(
            imagePath: mapgrid1ItemModelObj.mapImage!.value,
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
            mapgrid1ItemModelObj.mapText!.value,
            style: CustomTextStyles.bodySmallLight,
          ),
        ),
      ],
    );
  }
}
