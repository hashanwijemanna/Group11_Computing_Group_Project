import 'package:thamal_s_application7/core/app_export.dart';import 'package:thamal_s_application7/presentation/sign_up_admin_screen/models/sign_up_admin_model.dart';import 'package:flutter/material.dart';/// A controller class for the SignUpAdminScreen.
///
/// This class manages the state of the SignUpAdminScreen, including the
/// current signUpAdminModelObj
class SignUpAdminController extends GetxController {TextEditingController emailEditTextController = TextEditingController();

TextEditingController thumbsupEditTextController = TextEditingController();

TextEditingController locationEditTextController = TextEditingController();

Rx<SignUpAdminModel> signUpAdminModelObj = SignUpAdminModel().obs;

Rx<bool> isShowPassword = true.obs;

Rx<bool> isShowPassword1 = true.obs;

@override void onClose() { super.onClose(); emailEditTextController.dispose(); thumbsupEditTextController.dispose(); locationEditTextController.dispose(); } 
 }
