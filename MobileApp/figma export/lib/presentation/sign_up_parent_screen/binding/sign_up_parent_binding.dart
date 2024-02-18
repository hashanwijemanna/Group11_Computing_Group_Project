import '../controller/sign_up_parent_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SignUpParentScreen.
///
/// This class ensures that the SignUpParentController is created when the
/// SignUpParentScreen is first loaded.
class SignUpParentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignUpParentController());
  }
}
