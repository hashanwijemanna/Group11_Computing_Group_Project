import '../controller/student_profile_controller.dart';
import 'package:get/get.dart';

/// A binding class for the StudentProfileScreen.
///
/// This class ensures that the StudentProfileController is created when the
/// StudentProfileScreen is first loaded.
class StudentProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => StudentProfileController());
  }
}
