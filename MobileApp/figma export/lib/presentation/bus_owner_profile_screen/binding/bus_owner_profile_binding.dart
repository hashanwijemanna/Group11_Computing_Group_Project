import '../controller/bus_owner_profile_controller.dart';
import 'package:get/get.dart';

/// A binding class for the BusOwnerProfileScreen.
///
/// This class ensures that the BusOwnerProfileController is created when the
/// BusOwnerProfileScreen is first loaded.
class BusOwnerProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BusOwnerProfileController());
  }
}
