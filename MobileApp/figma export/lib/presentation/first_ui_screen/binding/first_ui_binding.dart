import '../controller/first_ui_controller.dart';
import 'package:get/get.dart';

/// A binding class for the FirstUiScreen.
///
/// This class ensures that the FirstUiController is created when the
/// FirstUiScreen is first loaded.
class FirstUiBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FirstUiController());
  }
}
