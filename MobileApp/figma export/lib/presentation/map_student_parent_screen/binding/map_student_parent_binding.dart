import '../controller/map_student_parent_controller.dart';
import 'package:get/get.dart';

/// A binding class for the MapStudentParentScreen.
///
/// This class ensures that the MapStudentParentController is created when the
/// MapStudentParentScreen is first loaded.
class MapStudentParentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MapStudentParentController());
  }
}
