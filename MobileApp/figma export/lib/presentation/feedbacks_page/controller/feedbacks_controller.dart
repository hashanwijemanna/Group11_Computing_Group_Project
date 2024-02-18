import 'package:thamal_s_application7/core/app_export.dart';
import 'package:thamal_s_application7/presentation/feedbacks_page/models/feedbacks_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the FeedbacksPage.
///
/// This class manages the state of the FeedbacksPage, including the
/// current feedbacksModelObj
class FeedbacksController extends GetxController {
  FeedbacksController(this.feedbacksModelObj);

  TextEditingController searchController = TextEditingController();

  TextEditingController commentController = TextEditingController();

  Rx<FeedbacksModel> feedbacksModelObj;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
    commentController.dispose();
  }
}
