import 'package:thamal_s_application7/core/app_export.dart';
import 'package:thamal_s_application7/presentation/route_details_screen/models/route_details_model.dart';

/// A controller class for the RouteDetailsScreen.
///
/// This class manages the state of the RouteDetailsScreen, including the
/// current routeDetailsModelObj
class RouteDetailsController extends GetxController {
  Rx<RouteDetailsModel> routeDetailsModelObj = RouteDetailsModel().obs;
}
