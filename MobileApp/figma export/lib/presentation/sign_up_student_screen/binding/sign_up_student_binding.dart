import '../controller/sign_up_student_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SignUpStudentScreen.
///
/// This class ensures that the SignUpStudentController is created when the
/// SignUpStudentScreen is first loaded.
class SignUpStudentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignUpStudentController());
  }
}
