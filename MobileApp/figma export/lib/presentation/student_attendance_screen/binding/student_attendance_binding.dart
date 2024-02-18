import '../controller/student_attendance_controller.dart';
import 'package:get/get.dart';

/// A binding class for the StudentAttendanceScreen.
///
/// This class ensures that the StudentAttendanceController is created when the
/// StudentAttendanceScreen is first loaded.
class StudentAttendanceBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => StudentAttendanceController());
  }
}
