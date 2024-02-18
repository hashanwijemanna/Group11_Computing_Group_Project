import '../controller/my_alerts_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MyAlertsScreen.
///
/// This class ensures that the MyAlertsController is created when the
/// MyAlertsScreen is first loaded.
class MyAlertsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MyAlertsController());
  }
}
