import 'package:thamal_s_application7/core/app_export.dart';
import 'package:thamal_s_application7/presentation/login_home_screen/models/login_home_model.dart';

/// A controller class for the LoginHomeScreen.
///
/// This class manages the state of the LoginHomeScreen, including the
/// current loginHomeModelObj
class LoginHomeController extends GetxController {
  Rx<LoginHomeModel> loginHomeModelObj = LoginHomeModel().obs;
}
