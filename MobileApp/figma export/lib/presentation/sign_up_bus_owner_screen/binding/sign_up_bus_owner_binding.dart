import '../controller/sign_up_bus_owner_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SignUpBusOwnerScreen.
///
/// This class ensures that the SignUpBusOwnerController is created when the
/// SignUpBusOwnerScreen is first loaded.
class SignUpBusOwnerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignUpBusOwnerController());
  }
}
