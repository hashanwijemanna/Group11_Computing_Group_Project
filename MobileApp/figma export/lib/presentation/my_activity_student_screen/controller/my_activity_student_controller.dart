import 'package:thamal_s_application7/core/app_export.dart';import 'package:thamal_s_application7/presentation/my_activity_student_screen/models/my_activity_student_model.dart';import 'package:calendar_date_picker2/calendar_date_picker2.dart';/// A controller class for the MyActivityStudentScreen.
///
/// This class manages the state of the MyActivityStudentScreen, including the
/// current myActivityStudentModelObj
class MyActivityStudentController extends GetxController {Rx<MyActivityStudentModel> myActivityStudentModelObj = MyActivityStudentModel().obs;

Rx<List<DateTime?>> selectedDatesFromCalendar1 = Rx([]);

 }
