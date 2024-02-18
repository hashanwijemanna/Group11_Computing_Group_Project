import '../controller/student_dashboard_controller.dart';
import 'package:get/get.dart';

/// A binding class for the StudentDashboardScreen.
///
/// This class ensures that the StudentDashboardController is created when the
/// StudentDashboardScreen is first loaded.
class StudentDashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => StudentDashboardController());
  }
}
