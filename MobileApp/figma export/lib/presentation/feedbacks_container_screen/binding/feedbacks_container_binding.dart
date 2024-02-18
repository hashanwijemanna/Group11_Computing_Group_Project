import '../controller/feedbacks_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the FeedbacksContainerScreen.
///
/// This class ensures that the FeedbacksContainerController is created when the
/// FeedbacksContainerScreen is first loaded.
class FeedbacksContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FeedbacksContainerController());
  }
}
