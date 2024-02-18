import '../controller/parent_profile_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ParentProfileScreen.
///
/// This class ensures that the ParentProfileController is created when the
/// ParentProfileScreen is first loaded.
class ParentProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ParentProfileController());
  }
}
