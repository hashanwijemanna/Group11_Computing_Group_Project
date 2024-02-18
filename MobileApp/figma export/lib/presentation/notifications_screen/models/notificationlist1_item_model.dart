import '../../../core/app_export.dart';/// This class is used in the [notificationlist1_item_widget] screen.
class Notificationlist1ItemModel {Notificationlist1ItemModel({this.notificationText, this.id, }) { notificationText = notificationText  ?? Rx("Displaying Notification here         00:00");id = id  ?? Rx(""); }

Rx<String>? notificationText;

Rx<String>? id;

 }
