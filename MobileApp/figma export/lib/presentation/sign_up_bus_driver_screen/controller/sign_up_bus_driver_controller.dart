import 'package:thamal_s_application7/core/app_export.dart';import 'package:thamal_s_application7/presentation/sign_up_bus_driver_screen/models/sign_up_bus_driver_model.dart';import 'package:flutter/material.dart';/// A controller class for the SignUpBusDriverScreen.
///
/// This class manages the state of the SignUpBusDriverScreen, including the
/// current signUpBusDriverModelObj
class SignUpBusDriverController extends GetxController {TextEditingController emailEditTextController = TextEditingController();

TextEditingController phoneNumberEditTextController = TextEditingController();

TextEditingController thumbsUpEditTextController = TextEditingController();

TextEditingController locationEditTextController = TextEditingController();

Rx<SignUpBusDriverModel> signUpBusDriverModelObj = SignUpBusDriverModel().obs;

Rx<bool> isShowPassword = true.obs;

Rx<bool> isShowPassword1 = true.obs;

@override void onClose() { super.onClose(); emailEditTextController.dispose(); phoneNumberEditTextController.dispose(); thumbsUpEditTextController.dispose(); locationEditTextController.dispose(); } 
 }
