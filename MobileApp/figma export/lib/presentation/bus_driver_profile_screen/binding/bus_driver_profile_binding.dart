import '../controller/bus_driver_profile_controller.dart';
import 'package:get/get.dart';

/// A binding class for the BusDriverProfileScreen.
///
/// This class ensures that the BusDriverProfileController is created when the
/// BusDriverProfileScreen is first loaded.
class BusDriverProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BusDriverProfileController());
  }
}
