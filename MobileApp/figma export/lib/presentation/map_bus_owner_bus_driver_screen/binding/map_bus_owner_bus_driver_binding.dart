import '../controller/map_bus_owner_bus_driver_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MapBusOwnerBusDriverScreen.
///
/// This class ensures that the MapBusOwnerBusDriverController is created when the
/// MapBusOwnerBusDriverScreen is first loaded.
class MapBusOwnerBusDriverBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MapBusOwnerBusDriverController());
  }
}
