import '../controller/bus_details_each_controller.dart';
import 'package:get/get.dart';

/// A binding class for the BusDetailsEachScreen.
///
/// This class ensures that the BusDetailsEachController is created when the
/// BusDetailsEachScreen is first loaded.
class BusDetailsEachBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BusDetailsEachController());
  }
}
