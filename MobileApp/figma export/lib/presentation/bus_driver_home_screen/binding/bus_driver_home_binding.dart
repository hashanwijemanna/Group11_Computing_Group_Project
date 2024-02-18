import '../controller/bus_driver_home_controller.dart';
import 'package:get/get.dart';

/// A binding class for the BusDriverHomeScreen.
///
/// This class ensures that the BusDriverHomeController is created when the
/// BusDriverHomeScreen is first loaded.
class BusDriverHomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BusDriverHomeController());
  }
}
