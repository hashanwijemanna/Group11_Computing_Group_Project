import '../controller/sign_up_bus_driver_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SignUpBusDriverScreen.
///
/// This class ensures that the SignUpBusDriverController is created when the
/// SignUpBusDriverScreen is first loaded.
class SignUpBusDriverBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignUpBusDriverController());
  }
}
