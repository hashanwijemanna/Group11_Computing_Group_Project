import '../controller/student_admin_profile_controller.dart';
import 'package:get/get.dart';

/// A binding class for the StudentAdminProfileScreen.
///
/// This class ensures that the StudentAdminProfileController is created when the
/// StudentAdminProfileScreen is first loaded.
class StudentAdminProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => StudentAdminProfileController());
  }
}
