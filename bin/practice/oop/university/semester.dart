import 'course/course.dart';
import 'course/general_course.dart';
import 'course/specialized_course.dart';

class Semester {
  String name;
  int id;
  final List<Course> _courses = [];

  Semester(
    this.name,
    this.id,
  );

  Course getCourseById({required int courseId}) {
   return _courses.firstWhere((element) => element.id == courseId);
  }

  void addGeneralCourse({
    required String courseName,
    required int courseId,
    required int unitCount,
  }) {
    final Course newCourse = GeneralCourse(
      courseName,
      courseId,
      unitCount,
    );
    _courses.add(newCourse);
  }

  void addSpecializedCourse({
    required String courseName,
    required int courseId,
    required int unitCount,
  }) {
    final Course newCourse = SpecializedCourse(
      courseName,
      courseId,
      unitCount,
    );
    _courses.add(newCourse);
  }

  bool isCourseExist({required int courseId}) {
    return _courses.any((element) => element.id == courseId);
  }

  List<Course> studentRegisteredCourse ({required int studentId}){
    List<Course> studentCourses = [];
    for (Course item in _courses){
      if (item.isStudentRegistered(studentId: studentId)){
        studentCourses.add(item);
      }
    }
    return studentCourses;
  }
}
