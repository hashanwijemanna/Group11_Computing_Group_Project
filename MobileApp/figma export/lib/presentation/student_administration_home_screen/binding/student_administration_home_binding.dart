import '../controller/student_administration_home_controller.dart';
import 'package:get/get.dart';

/// A binding class for the StudentAdministrationHomeScreen.
///
/// This class ensures that the StudentAdministrationHomeController is created when the
/// StudentAdministrationHomeScreen is first loaded.
class StudentAdministrationHomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => StudentAdministrationHomeController());
  }
}
