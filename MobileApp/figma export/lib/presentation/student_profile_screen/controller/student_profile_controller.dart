import 'package:thamal_s_application7/core/app_export.dart';import 'package:thamal_s_application7/presentation/student_profile_screen/models/student_profile_model.dart';/// A controller class for the StudentProfileScreen.
///
/// This class manages the state of the StudentProfileScreen, including the
/// current studentProfileModelObj
class StudentProfileController extends GetxController {Rx<StudentProfileModel> studentProfileModelObj = StudentProfileModel().obs;

 }
