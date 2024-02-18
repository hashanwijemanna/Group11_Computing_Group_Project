import '../controller/stu_ad_announcement_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the StuAdAnnouncementOneScreen.
///
/// This class ensures that the StuAdAnnouncementOneController is created when the
/// StuAdAnnouncementOneScreen is first loaded.
class StuAdAnnouncementOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => StuAdAnnouncementOneController());
  }
}
