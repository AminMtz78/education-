import '../student.dart';
abstract class Course {
  String title;
  int id;
  int unitCount;
   int unitFactor = 0;
  final List<Student> students = [];

  Course({
    required this.title,
    required this.id,
    required this.unitCount,
  });

  bool isStudentInCourse({required int studentId}){
    return students.contains((element) => element.id = studentId);
  }



  @override
  String toString() {
    return 'Course{title: $title, id: $id, unitCount: $unitCount}';
  }
}
