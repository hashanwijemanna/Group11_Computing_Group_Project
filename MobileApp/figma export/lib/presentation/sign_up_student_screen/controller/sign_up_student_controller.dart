import 'package:thamal_s_application7/core/app_export.dart';import 'package:thamal_s_application7/presentation/sign_up_student_screen/models/sign_up_student_model.dart';import 'package:flutter/material.dart';/// A controller class for the SignUpStudentScreen.
///
/// This class manages the state of the SignUpStudentScreen, including the
/// current signUpStudentModelObj
class SignUpStudentController extends GetxController {TextEditingController emailEditTextController = TextEditingController();

TextEditingController phoneNumberEditTextController = TextEditingController();

TextEditingController downloadEditTextController = TextEditingController();

TextEditingController thumbsUpEditTextController = TextEditingController();

TextEditingController locationEditTextController = TextEditingController();

Rx<SignUpStudentModel> signUpStudentModelObj = SignUpStudentModel().obs;

Rx<bool> isShowPassword = true.obs;

Rx<bool> isShowPassword1 = true.obs;

Rx<bool> isShowPassword2 = true.obs;

@override void onClose() { super.onClose(); emailEditTextController.dispose(); phoneNumberEditTextController.dispose(); downloadEditTextController.dispose(); thumbsUpEditTextController.dispose(); locationEditTextController.dispose(); } 
 }
