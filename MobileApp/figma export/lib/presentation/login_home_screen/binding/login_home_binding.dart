import '../controller/login_home_controller.dart';
import 'package:get/get.dart';

/// A binding class for the LoginHomeScreen.
///
/// This class ensures that the LoginHomeController is created when the
/// LoginHomeScreen is first loaded.
class LoginHomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginHomeController());
  }
}
