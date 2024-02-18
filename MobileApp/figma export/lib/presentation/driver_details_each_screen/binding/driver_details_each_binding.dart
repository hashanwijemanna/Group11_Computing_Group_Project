import '../controller/driver_details_each_controller.dart';
import 'package:get/get.dart';

/// A binding class for the DriverDetailsEachScreen.
///
/// This class ensures that the DriverDetailsEachController is created when the
/// DriverDetailsEachScreen is first loaded.
class DriverDetailsEachBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DriverDetailsEachController());
  }
}
