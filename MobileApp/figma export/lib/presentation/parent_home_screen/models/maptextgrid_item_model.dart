import '../../../core/app_export.dart';/// This class is used in the [maptextgrid_item_widget] screen.
class MaptextgridItemModel {MaptextgridItemModel({this.mapImage, this.mapText, this.id, }) { mapImage = mapImage  ?? Rx(ImageConstant.imgRectangle16);mapText = mapText  ?? Rx("Map (Parental Monitoring)");id = id  ?? Rx(""); }

Rx<String>? mapImage;

Rx<String>? mapText;

Rx<String>? id;

 }
