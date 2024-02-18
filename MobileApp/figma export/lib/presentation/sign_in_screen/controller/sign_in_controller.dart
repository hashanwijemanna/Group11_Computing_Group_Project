import 'package:thamal_s_application7/core/app_export.dart';import 'package:thamal_s_application7/presentation/sign_in_screen/models/sign_in_model.dart';import 'package:flutter/material.dart';/// A controller class for the SignInScreen.
///
/// This class manages the state of the SignInScreen, including the
/// current signInModelObj
class SignInController extends GetxController {TextEditingController userNameController = TextEditingController();

TextEditingController passwordController = TextEditingController();

Rx<SignInModel> signInModelObj = SignInModel().obs;

Rx<bool> isShowPassword = true.obs;

Rx<bool> rememberMe = false.obs;

@override void onClose() { super.onClose(); userNameController.dispose(); passwordController.dispose(); } 
@override void onReady() { Future.delayed(const Duration(milliseconds: 3000), (){
Get.offNamed(AppRoutes.firstUiScreen,);}); } 
 }
