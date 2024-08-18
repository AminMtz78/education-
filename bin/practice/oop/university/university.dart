import 'course/course.dart';
import 'location.dart';
import 'student.dart';
import 'semester.dart';

class University {
  String name;
  int id;
  Location location;
  final List<Student> _students = [];
  final List<Semester> _semesters = [];

  University(
    this.name,
    this.id,
    this.location,
  );

  void addStudentToUni({
    required int studentId,
    required Location studentLocation,
    required String studentName,
  }) {
    bool isStudentExistInUni = isStudentExist(studentId: studentId);

    if (isStudentExistInUni) {
      print(
          'already exist a student with same student id please enter another id');
    } else {
      Student student = Student(studentName, studentId, studentLocation);
      _students.add(student);
    }
  }

  void addSemesterToUni({
    required int semesterId,
    required String semesterName,
  }) {
    bool isSemesterFound = isSemesterExist(semesterId: semesterId);

    if (isSemesterFound) {
      print(
          'already exist a semester with this semester id please enter another id');
    } else {
      Semester newSemester = Semester(semesterName, semesterId);
      _semesters.add(newSemester);
    }
  }

  bool idStudentFound({required int studentId}) {
    return _students.any((element) => element.id == studentId);
  }

  void addStudentToCourseInSemester({
    required int semesterId,
    required int studentId,
    required int courseId,
  }) {
    if (!isStudentExist(studentId: studentId) ||
        !isSemesterExist(semesterId: semesterId)) {
      print(
          'there is not any student or semester in university with this student id or semester id');
    } else {
      Semester desiredSemester =
          _semesters.firstWhere((element) => element.id == semesterId);
      bool isCourseExist = desiredSemester.isCourseExist(courseId: courseId);
      if (!isCourseExist) {
        print('course does not exist');
      } else {
        Course desiredCourse =
            desiredSemester.getCourseById(courseId: courseId);
        Student student =
            _students.firstWhere((element) => element.id == studentId);
        desiredCourse.addStudentToCourse(student: student);
      }
    }
  }

  bool isSemesterExist({required int semesterId}) {
    return _semesters.indexWhere((element) => element.id == semesterId) != -1;
  }

  bool isStudentExist({required int studentId}) {
    return _students.indexWhere((element) => element.id == studentId) != -1;
  }

  Semester getSemesterById({required int semesterId}){
    return _semesters.firstWhere((element) => element.id == semesterId);
  }

  Student getStudentById({required int studentId}){
    return _students.firstWhere((element) => element.id == studentId);
  }
}
