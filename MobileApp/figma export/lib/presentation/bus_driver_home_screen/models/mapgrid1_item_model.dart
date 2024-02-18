import '../../../core/app_export.dart';/// This class is used in the [mapgrid1_item_widget] screen.
class Mapgrid1ItemModel {Mapgrid1ItemModel({this.mapImage, this.mapText, this.id, }) { mapImage = mapImage  ?? Rx(ImageConstant.imgRectangle16);mapText = mapText  ?? Rx("Map");id = id  ?? Rx(""); }

Rx<String>? mapImage;

Rx<String>? mapText;

Rx<String>? id;

 }
