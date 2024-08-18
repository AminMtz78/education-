
import 'location.dart';
import 'semester.dart';
import 'student.dart';
import 'course/course.dart';

class University {
  final Location location;
  final String name;
  final int id;
  final List<Semester> _semesters = [];
  final List<Student> _students = [];

  University({
    required this.location,
    required this.name,
    required this.id,
  });

  void addSemester({required String title, required int id}) {
    final newSemester = Semester(id, title);
    _semesters.add(newSemester);
  }

  List<Semester> get semesters => _semesters;

  void addCourseToSemesterBySemesterId({
    required int semesterId,
    required int courseId,
    required int courseUnitCount,
    required String courseTitle,
  }) {
    final int semesterIndex =
    _semesters.indexWhere((element) => element.id == semesterId);

    final isSemesterFound = semesterIndex != -1;

    if (isSemesterFound) {
      _semesters[semesterIndex].addGeneralCourse(
          title: courseTitle, id: courseId, unitCount: courseUnitCount);
    }
  }

  void addStudentToCourse({
    required int studentId,
    required String name,
    required int location,
    // required Student student,
    required int semesterId,
    required int courseId,
  }) {
    final Semester semester = _semesters.firstWhere((element) =>
    element.id == semesterId);
    final int semesterIndex = semester.id;
    final Student student = _students.firstWhere((element) => element.id == studentId);
    final bool isStudentFound = student.id != -1;
    final Course course = semester.getCourseById(courseId: courseId);
    final isSemesterFound = semesterIndex != -1;

    if (isSemesterFound && isStudentFound) {
      final semester = _semesters[semesterIndex];
      final Course course = semester.getCourseById(courseId: courseId);
      course.students.add(Student(name, studentId, location));
    }

    bool isStudentInUniversity({required int studentId}){
       bool isStudentInUni = _students.contains((element) => element.id == studentId);
       return isStudentInUni;
    }

    // int calculateUnitOfStudentInSemester ({required int studentId, required int semesterId}){
    //
    // }

    @override
    String toString() {
      return 'University{location: $location, name: $name, id: $id, semesters: $_semesters}';
    }
  }
}

