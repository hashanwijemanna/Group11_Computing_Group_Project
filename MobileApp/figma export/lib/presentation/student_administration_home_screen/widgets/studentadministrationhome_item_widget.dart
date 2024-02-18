import '../controller/student_administration_home_controller.dart';
import '../models/studentadministrationhome_item_model.dart';
import 'package:flutter/material.dart';
import 'package:thamal_s_application7/core/app_export.dart';

// ignore: must_be_immutable
class StudentadministrationhomeItemWidget extends StatelessWidget {
  StudentadministrationhomeItemWidget(
    this.studentadministrationhomeItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  StudentadministrationhomeItemModel studentadministrationhomeItemModelObj;

  var controller = Get.find<StudentAdministrationHomeController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(
          () => CustomImageView(
            imagePath:
                studentadministrationhomeItemModelObj.studentdetails!.value,
            height: 100.v,
            width: 225.h,
            radius: BorderRadius.circular(
              10.h,
            ),
          ),
        ),
        Obx(
          () => Text(
            studentadministrationhomeItemModelObj.studentDetails!.value,
            style: CustomTextStyles.bodySmallInter,
          ),
        ),
      ],
    );
  }
}
