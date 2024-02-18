import '../../../core/app_export.dart';/// This class is used in the [parenthomelist_item_widget] screen.
class ParenthomelistItemModel {ParenthomelistItemModel({this.lock, this.lock1, this.contrast, this.id, }) { lock = lock  ?? Rx(ImageConstant.imgLock);lock1 = lock1  ?? Rx(ImageConstant.imgLock);contrast = contrast  ?? Rx(ImageConstant.imgContrast);id = id  ?? Rx(""); }

Rx<String>? lock;

Rx<String>? lock1;

Rx<String>? contrast;

Rx<String>? id;

 }
