import '../controller/bus_owner_home_controller.dart';
import 'package:get/get.dart';

/// A binding class for the BusOwnerHomeScreen.
///
/// This class ensures that the BusOwnerHomeController is created when the
/// BusOwnerHomeScreen is first loaded.
class BusOwnerHomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BusOwnerHomeController());
  }
}
