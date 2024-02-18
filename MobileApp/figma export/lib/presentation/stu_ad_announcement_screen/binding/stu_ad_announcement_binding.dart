import '../controller/stu_ad_announcement_controller.dart';
import 'package:get/get.dart';

/// A binding class for the StuAdAnnouncementScreen.
///
/// This class ensures that the StuAdAnnouncementController is created when the
/// StuAdAnnouncementScreen is first loaded.
class StuAdAnnouncementBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => StuAdAnnouncementController());
  }
}
