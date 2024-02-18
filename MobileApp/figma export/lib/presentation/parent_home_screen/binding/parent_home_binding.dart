import '../controller/parent_home_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ParentHomeScreen.
///
/// This class ensures that the ParentHomeController is created when the
/// ParentHomeScreen is first loaded.
class ParentHomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ParentHomeController());
  }
}
