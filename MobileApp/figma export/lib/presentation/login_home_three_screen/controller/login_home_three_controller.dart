import 'package:thamal_s_application7/core/app_export.dart';
import 'package:thamal_s_application7/presentation/login_home_three_screen/models/login_home_three_model.dart';

/// A controller class for the LoginHomeThreeScreen.
///
/// This class manages the state of the LoginHomeThreeScreen, including the
/// current loginHomeThreeModelObj
class LoginHomeThreeController extends GetxController {
  Rx<LoginHomeThreeModel> loginHomeThreeModelObj = LoginHomeThreeModel().obs;
}
