import 'course/course.dart';
import 'location.dart';
import 'university.dart';
import 'semester.dart';
import 'student_semester_cost_calculator.dart';
import 'student.dart';
void main(){

  final Location shiraz = Location(title: 'shiraz', id: 1);
  // final Location tehran = Location(title: 'tehran', id: 2);

  final University taavUniversity = University(
    location: shiraz,
    name: 'taav',
    id: 100,
  );

  taavUniversity.addSemester(title: 'summer', id: 1);
  Semester summer = taavUniversity.semesters.firstWhere((element) => element.id == 1 || element.title == 'summer');
  Semester winter = taavUniversity.semesters.firstWhere((element) => element.id == 2 || element.title == 'winter');

  print(summer);
  print('----------');
  // print(winter);

  taavUniversity.semesters.first.addGeneralCourse(title: 'math', id: 1, unitCount: 3);
  taavUniversity.semesters.first.addGeneralCourse(title: 'ping pong', id: 2, unitCount: 1);
  taavUniversity.semesters.first.addGeneralCourse(title: 'dart programming', id: 3, unitCount: 3);
  taavUniversity.semesters.first.addGeneralCourse(title: 'flutter', id: 4, unitCount: 3);



  // taavUniversity.semesters.first.addCourse(title: title, id: id, unitCount: unitCount)

  Student('amin', 1, 1);
  Student('ali', 2, 2);
  Student('alireza', 3, 1);


}