import '../controller/login_home_three_controller.dart';
import 'package:get/get.dart';

/// A binding class for the LoginHomeThreeScreen.
///
/// This class ensures that the LoginHomeThreeController is created when the
/// LoginHomeThreeScreen is first loaded.
class LoginHomeThreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginHomeThreeController());
  }
}
