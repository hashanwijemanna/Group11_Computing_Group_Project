import '../../../core/app_export.dart';/// This class is used in the [notificationgrid_item_widget] screen.
class NotificationgridItemModel {NotificationgridItemModel({this.notificationImage, this.notificationText, this.id, }) { notificationImage = notificationImage  ?? Rx(ImageConstant.imgRectangle22);notificationText = notificationText  ?? Rx("Notifications");id = id  ?? Rx(""); }

Rx<String>? notificationImage;

Rx<String>? notificationText;

Rx<String>? id;

 }
