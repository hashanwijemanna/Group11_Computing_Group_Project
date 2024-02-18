import '../../../core/app_export.dart';/// This class is used in the [notificationlist2_item_widget] screen.
class Notificationlist2ItemModel {Notificationlist2ItemModel({this.notificationText, this.id, }) { notificationText = notificationText  ?? Rx("Displaying Notification here         00:00");id = id  ?? Rx(""); }

Rx<String>? notificationText;

Rx<String>? id;

 }
