import '../../../core/app_export.dart';/// This class is used in the [mapgrid_item_widget] screen.
class MapgridItemModel {MapgridItemModel({this.mapImage, this.mapText, this.id, }) { mapImage = mapImage  ?? Rx(ImageConstant.imgRectangle16);mapText = mapText  ?? Rx("Map");id = id  ?? Rx(""); }

Rx<String>? mapImage;

Rx<String>? mapText;

Rx<String>? id;

 }
