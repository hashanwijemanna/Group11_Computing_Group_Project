import '../../../core/app_export.dart';/// This class is used in the [studentadministrationhome_item_widget] screen.
class StudentadministrationhomeItemModel {StudentadministrationhomeItemModel({this.studentdetails, this.studentDetails, this.id, }) { studentdetails = studentdetails  ?? Rx(ImageConstant.imgRectangle53);studentDetails = studentDetails  ?? Rx("Student details");id = id  ?? Rx(""); }

Rx<String>? studentdetails;

Rx<String>? studentDetails;

Rx<String>? id;

 }
