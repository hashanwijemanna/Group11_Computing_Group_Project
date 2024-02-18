import 'package:thamal_s_application7/core/app_export.dart';import 'package:thamal_s_application7/presentation/sign_up_parent_screen/models/sign_up_parent_model.dart';import 'package:flutter/material.dart';/// A controller class for the SignUpParentScreen.
///
/// This class manages the state of the SignUpParentScreen, including the
/// current signUpParentModelObj
class SignUpParentController extends GetxController {TextEditingController emailController = TextEditingController();

TextEditingController phoneNumberController = TextEditingController();

TextEditingController thumbsupController = TextEditingController();

TextEditingController locationController = TextEditingController();

Rx<SignUpParentModel> signUpParentModelObj = SignUpParentModel().obs;

Rx<bool> isShowPassword = true.obs;

Rx<bool> isShowPassword1 = true.obs;

@override void onClose() { super.onClose(); emailController.dispose(); phoneNumberController.dispose(); thumbsupController.dispose(); locationController.dispose(); } 
 }
