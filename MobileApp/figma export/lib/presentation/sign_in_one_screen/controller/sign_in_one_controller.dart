import 'package:thamal_s_application7/core/app_export.dart';import 'package:thamal_s_application7/presentation/sign_in_one_screen/models/sign_in_one_model.dart';import 'package:flutter/material.dart';/// A controller class for the SignInOneScreen.
///
/// This class manages the state of the SignInOneScreen, including the
/// current signInOneModelObj
class SignInOneController extends GetxController {TextEditingController studentEditTextController = TextEditingController();

TextEditingController parentEditTextController = TextEditingController();

TextEditingController adminEditTextController = TextEditingController();

TextEditingController busOwnerEditTextController = TextEditingController();

TextEditingController busDriverEditTextController = TextEditingController();

Rx<SignInOneModel> signInOneModelObj = SignInOneModel().obs;

@override void onClose() { super.onClose(); studentEditTextController.dispose(); parentEditTextController.dispose(); adminEditTextController.dispose(); busOwnerEditTextController.dispose(); busDriverEditTextController.dispose(); } 
 }
