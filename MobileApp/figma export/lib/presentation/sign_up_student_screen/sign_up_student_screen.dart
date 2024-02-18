import 'controller/sign_up_student_controller.dart';import 'package:flutter/material.dart';import 'package:thamal_s_application7/core/app_export.dart';import 'package:thamal_s_application7/core/utils/validation_functions.dart';import 'package:thamal_s_application7/widgets/custom_elevated_button.dart';import 'package:thamal_s_application7/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable
class SignUpStudentScreen extends GetWidget<SignUpStudentController> {SignUpStudentScreen({Key? key}) : super(key: key);

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom), child: Form(key: _formKey, child: SizedBox(width: double.maxFinite, child: Column(children: [_buildSignUpStudentStack(), SizedBox(height: 76.v), Text("lbl_create_account".tr, style: theme.textTheme.headlineSmall), SizedBox(height: 32.v), _buildEmailEditText(), SizedBox(height: 12.v), _buildPhoneNumberEditText(), SizedBox(height: 12.v), _buildDownloadEditText(), SizedBox(height: 12.v), _buildThumbsUpEditText(), SizedBox(height: 12.v), _buildLocationEditText(), SizedBox(height: 85.v), _buildSignUpButton(), SizedBox(height: 36.v), Text("msg_already_have_an".tr, style: CustomTextStyles.bodyMediumRegular), SizedBox(height: 13.v), GestureDetector(onTap: () {onTapTxtSignInFromHere();}, child: Text("msg_sign_in_from_here".tr, style: CustomTextStyles.bodyMediumPrimary)), SizedBox(height: 5.v)]))))))); } 
/// Section Widget
Widget _buildSignUpStudentStack() { return Container(padding: EdgeInsets.symmetric(horizontal: 130.h, vertical: 25.v), decoration: AppDecoration.outlineOnPrimaryContainer.copyWith(borderRadius: BorderRadiusStyle.customBorderBL150), child: Container(height: 100.adaptSize, width: 100.adaptSize, decoration: AppDecoration.fillBlueGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder30), child: CustomImageView(imagePath: ImageConstant.imgWhatsappImage, height: 83.v, width: 100.h, alignment: Alignment.topCenter))); } 
/// Section Widget
Widget _buildEmailEditText() { return Padding(padding: EdgeInsets.symmetric(horizontal: 25.h), child: CustomTextFormField(controller: controller.emailEditTextController, hintText: "lbl_email2".tr, textInputType: TextInputType.emailAddress, prefix: Container(margin: EdgeInsets.fromLTRB(12.h, 10.v, 19.h, 10.v), child: CustomImageView(imagePath: ImageConstant.imgLockPrimary, height: 20.v, width: 24.h)), prefixConstraints: BoxConstraints(maxHeight: 40.v), validator: (value) {if (value == null || (!isValidEmail(value, isRequired: true))) {return "err_msg_please_enter_valid_email".tr;} return null;})); } 
/// Section Widget
Widget _buildPhoneNumberEditText() { return Padding(padding: EdgeInsets.symmetric(horizontal: 25.h), child: CustomTextFormField(controller: controller.phoneNumberEditTextController, hintText: "msg_enter_your_phone".tr, textInputType: TextInputType.phone, prefix: Container(margin: EdgeInsets.fromLTRB(12.h, 11.v, 25.h, 11.v), child: CustomImageView(imagePath: ImageConstant.imgCall, height: 18.adaptSize, width: 18.adaptSize)), prefixConstraints: BoxConstraints(maxHeight: 40.v), validator: (value) {if (!isValidPhone(value)) {return "err_msg_please_enter_valid_phone_number".tr;} return null;})); } 
/// Section Widget
Widget _buildDownloadEditText() { return Padding(padding: EdgeInsets.symmetric(horizontal: 25.h), child: Obx(() => CustomTextFormField(controller: controller.downloadEditTextController, suffix: InkWell(onTap: () {controller.isShowPassword.value = !controller.isShowPassword.value;}, child: Container(margin: EdgeInsets.symmetric(horizontal: 13.h, vertical: 11.v), child: CustomImageView(imagePath: ImageConstant.imgDownload, height: 17.v, width: 20.h))), suffixConstraints: BoxConstraints(maxHeight: 40.v), obscureText: controller.isShowPassword.value))); } 
/// Section Widget
Widget _buildThumbsUpEditText() { return Padding(padding: EdgeInsets.symmetric(horizontal: 25.h), child: Obx(() => CustomTextFormField(controller: controller.thumbsUpEditTextController, prefix: Container(margin: EdgeInsets.symmetric(horizontal: 11.h, vertical: 9.v), child: CustomImageView(imagePath: ImageConstant.imgThumbsup, height: 22.v, width: 19.h)), prefixConstraints: BoxConstraints(maxHeight: 40.v), suffix: InkWell(onTap: () {controller.isShowPassword1.value = !controller.isShowPassword1.value;}, child: Container(margin: EdgeInsets.all(12.h), child: CustomImageView(imagePath: ImageConstant.imgSettings, height: 15.v, width: 22.h))), suffixConstraints: BoxConstraints(maxHeight: 40.v), obscureText: controller.isShowPassword1.value))); } 
/// Section Widget
Widget _buildLocationEditText() { return Padding(padding: EdgeInsets.symmetric(horizontal: 25.h), child: Obx(() => CustomTextFormField(controller: controller.locationEditTextController, textInputAction: TextInputAction.done, prefix: Container(margin: EdgeInsets.symmetric(horizontal: 12.h, vertical: 9.v), child: CustomImageView(imagePath: ImageConstant.imgLocation, height: 21.v, width: 16.h)), prefixConstraints: BoxConstraints(maxHeight: 40.v), suffix: InkWell(onTap: () {controller.isShowPassword2.value = !controller.isShowPassword2.value;}, child: Container(margin: EdgeInsets.all(12.h), child: CustomImageView(imagePath: ImageConstant.imgSettings, height: 15.v, width: 22.h))), suffixConstraints: BoxConstraints(maxHeight: 40.v), obscureText: controller.isShowPassword2.value))); } 
/// Section Widget
Widget _buildSignUpButton() { return CustomElevatedButton(text: "lbl_sign_up".tr, margin: EdgeInsets.symmetric(horizontal: 25.h), onPressed: () {onTapSignUpButton();}); } 
/// Navigates to the signInScreen when the action is triggered.
onTapSignUpButton() { Get.toNamed(AppRoutes.signInScreen, ); } 
/// Navigates to the signInScreen when the action is triggered.
onTapTxtSignInFromHere() { Get.toNamed(AppRoutes.signInScreen, ); } 
 }
