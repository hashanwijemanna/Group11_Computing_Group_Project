import '../controller/login_home_two_controller.dart';
import 'package:get/get.dart';

/// A binding class for the LoginHomeTwoScreen.
///
/// This class ensures that the LoginHomeTwoController is created when the
/// LoginHomeTwoScreen is first loaded.
class LoginHomeTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginHomeTwoController());
  }
}
