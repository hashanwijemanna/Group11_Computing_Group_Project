import '../controller/sign_up_admin_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SignUpAdminScreen.
///
/// This class ensures that the SignUpAdminController is created when the
/// SignUpAdminScreen is first loaded.
class SignUpAdminBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignUpAdminController());
  }
}
