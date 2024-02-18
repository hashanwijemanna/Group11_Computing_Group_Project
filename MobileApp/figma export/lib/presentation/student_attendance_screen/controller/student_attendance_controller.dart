import 'package:thamal_s_application7/core/app_export.dart';
import 'package:thamal_s_application7/presentation/student_attendance_screen/models/student_attendance_model.dart';

/// A controller class for the StudentAttendanceScreen.
///
/// This class manages the state of the StudentAttendanceScreen, including the
/// current studentAttendanceModelObj
class StudentAttendanceController extends GetxController {
  Rx<StudentAttendanceModel> studentAttendanceModelObj =
      StudentAttendanceModel().obs;
}
