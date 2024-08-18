import 'course/course.dart';
import 'course/general_course.dart';
import 'course/specialized_course.dart';
import 'student.dart';
import 'university.dart';
import 'location.dart';
import 'semester.dart';

void main() {
  Location shiraz = Location('shiraz', 1);
  Location tehran = Location('tehran', 2);

  University taavUniversity = University('taav', 1, shiraz);

  print(taavUniversity.location);

  // taavUniversity.addSemesterToUni(semester: semester)



}
