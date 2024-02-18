import 'controller/feedbacks_container_controller.dart';import 'package:flutter/material.dart';import 'package:thamal_s_application7/core/app_export.dart';import 'package:thamal_s_application7/presentation/feedbacks_page/feedbacks_page.dart';import 'package:thamal_s_application7/widgets/custom_bottom_bar.dart';class FeedbacksContainerScreen extends GetWidget<FeedbacksContainerController> {const FeedbacksContainerScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(body: Navigator(key: Get.nestedKey(1), initialRoute: AppRoutes.feedbacksPage, onGenerateRoute: (routeSetting) => GetPageRoute(page: () => getCurrentPage(routeSetting.name!), transition: Transition.noTransition)), bottomNavigationBar: Padding(padding: EdgeInsets.symmetric(horizontal: 12.h), child: _buildBottomBar()))); } 
/// Section Widget
Widget _buildBottomBar() { return CustomBottomBar(onChanged: (BottomBarEnum type) {Get.toNamed(getCurrentRoute(type), id: 1);}); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Lock: return AppRoutes.feedbacksPage; case BottomBarEnum.Bellring: return "/"; case BottomBarEnum.Home: return "/"; case BottomBarEnum.Bus: return "/"; case BottomBarEnum.Facebook: return "/"; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(String currentRoute) { switch (currentRoute) {case AppRoutes.feedbacksPage: return FeedbacksPage(); default: return DefaultWidget();} } 
 }
