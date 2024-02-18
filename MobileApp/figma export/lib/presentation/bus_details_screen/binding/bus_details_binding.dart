import '../controller/bus_details_controller.dart';
import 'package:get/get.dart';

/// A binding class for the BusDetailsScreen.
///
/// This class ensures that the BusDetailsController is created when the
/// BusDetailsScreen is first loaded.
class BusDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BusDetailsController());
  }
}
