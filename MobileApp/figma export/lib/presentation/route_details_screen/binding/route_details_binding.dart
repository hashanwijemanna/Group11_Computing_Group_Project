import '../controller/route_details_controller.dart';
import 'package:get/get.dart';

/// A binding class for the RouteDetailsScreen.
///
/// This class ensures that the RouteDetailsController is created when the
/// RouteDetailsScreen is first loaded.
class RouteDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RouteDetailsController());
  }
}
