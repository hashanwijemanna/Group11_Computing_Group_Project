import '../controller/login_home_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the LoginHomeOneScreen.
///
/// This class ensures that the LoginHomeOneController is created when the
/// LoginHomeOneScreen is first loaded.
class LoginHomeOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginHomeOneController());
  }
}
