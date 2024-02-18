import '../../../core/app_export.dart';import 'mapgrid_item_model.dart';/// This class defines the variables used in the [bus_owner_home_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class BusOwnerHomeModel {Rx<List<MapgridItemModel>> mapgridItemList = Rx([MapgridItemModel(mapImage:ImageConstant.imgRectangle16.obs,mapText: "Map".obs),MapgridItemModel(mapImage:ImageConstant.imgRectangle291.obs,mapText: "Driver Details".obs),MapgridItemModel(mapImage:ImageConstant.imgRectangle21.obs,mapText: "Route Details".obs),MapgridItemModel(mapImage:ImageConstant.imgRectangle22.obs,mapText: "Notifications".obs),MapgridItemModel(mapImage:ImageConstant.imgRectangle24.obs,mapText: "My Alerts".obs),MapgridItemModel(mapImage:ImageConstant.imgRectangle30.obs,mapText: "Bus Details".obs),MapgridItemModel(mapImage:ImageConstant.imgRectangle23.obs,mapText: "Feedbacks".obs),MapgridItemModel(mapImage:ImageConstant.imgRectangle28.obs,mapText: "Report".obs)]);

 }
