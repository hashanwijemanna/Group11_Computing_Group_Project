import 'package:thamal_s_application7/core/app_export.dart';
import 'package:thamal_s_application7/presentation/first_ui_screen/models/first_ui_model.dart';

/// A controller class for the FirstUiScreen.
///
/// This class manages the state of the FirstUiScreen, including the
/// current firstUiModelObj
class FirstUiController extends GetxController {
  Rx<FirstUiModel> firstUiModelObj = FirstUiModel().obs;
}
