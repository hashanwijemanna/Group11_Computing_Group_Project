import '../controller/my_activity_student_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MyActivityStudentScreen.
///
/// This class ensures that the MyActivityStudentController is created when the
/// MyActivityStudentScreen is first loaded.
class MyActivityStudentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MyActivityStudentController());
  }
}
