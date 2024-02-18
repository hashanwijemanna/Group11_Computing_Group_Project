import 'package:thamal_s_application7/core/app_export.dart';import 'package:thamal_s_application7/presentation/sign_up_bus_owner_screen/models/sign_up_bus_owner_model.dart';import 'package:flutter/material.dart';/// A controller class for the SignUpBusOwnerScreen.
///
/// This class manages the state of the SignUpBusOwnerScreen, including the
/// current signUpBusOwnerModelObj
class SignUpBusOwnerController extends GetxController {TextEditingController emailController = TextEditingController();

TextEditingController phoneNumberController = TextEditingController();

TextEditingController thumbsupController = TextEditingController();

TextEditingController locationController = TextEditingController();

Rx<SignUpBusOwnerModel> signUpBusOwnerModelObj = SignUpBusOwnerModel().obs;

Rx<bool> isShowPassword = true.obs;

Rx<bool> isShowPassword1 = true.obs;

@override void onClose() { super.onClose(); emailController.dispose(); phoneNumberController.dispose(); thumbsupController.dispose(); locationController.dispose(); } 
 }
