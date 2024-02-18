import '../controller/login_home_four_controller.dart';
import 'package:get/get.dart';

/// A binding class for the LoginHomeFourScreen.
///
/// This class ensures that the LoginHomeFourController is created when the
/// LoginHomeFourScreen is first loaded.
class LoginHomeFourBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginHomeFourController());
  }
}
