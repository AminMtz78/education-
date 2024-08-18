import 'course/course.dart';
import 'course/specialized_course.dart';
import 'course/general_course.dart';

class Semester {
  final int id;
  final String title;
  final List<Course> _courses = [];

  Semester(this.id, this.title);

  void addSpecializedCourse({
    required String title,
    required int id,
    required int unitCount,
  }) {
    final Course newCourse = SpecializedCourse(
      title: title,
      id: id,
      unitCount: unitCount,
    );
  }

  void addGeneralCourse({
    required String title,
    required int id,
    required int unitCount,
  }) {
    final Course newCourse = GeneralCourse(
      title: title,
      id: id,
      unitCount: unitCount,
    );
  }

  Course getCourseById({required int courseId}){
    Course course = _courses.firstWhere((element) => element.id == courseId);
    return course;
  }

  @override
  String toString() {
    return 'Semester{id: $id, title: $title, courses: $_courses}';
  }
}
