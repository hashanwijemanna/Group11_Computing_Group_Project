import '../controller/reports_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ReportsScreen.
///
/// This class ensures that the ReportsController is created when the
/// ReportsScreen is first loaded.
class ReportsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ReportsController());
  }
}
