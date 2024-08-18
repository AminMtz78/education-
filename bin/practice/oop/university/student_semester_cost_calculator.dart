import 'university.dart';
import 'semester.dart';
import 'course/course.dart';
import 'student.dart';
import 'course/general_course.dart';
import 'course/specialized_course.dart';

class StudentSemesterCostCalculator {
  University university;

  // Semester semester;
  // Student student;
  int semesterId;
  int studentId;

  StudentSemesterCostCalculator(
    this.university,
    this.semesterId,
    this.studentId,
  );

  double studentCostInSemester() {
    double totalCost = 0.0;
    int totalUnit;
    double locationFactor;
    if (!university.isSemesterExist(semesterId: semesterId) ||
        !university.isStudentExist(studentId: studentId)) {
      print('semester does not exist');
    } else {
      Student currentStudent = university.getStudentById(studentId: studentId);
      if (university.location == currentStudent.location) {
        locationFactor = 75;
      } else {
        locationFactor = 125;
      }
      Semester desiredSemester =
          university.getSemesterById(semesterId: semesterId);
      List<Course> studentCourses =
          desiredSemester.studentRegisteredCourse(studentId: studentId);
      for (Course item in studentCourses) {
        double cost = 0;
        if (item.runtimeType == GeneralCourse) {
          cost = item.unitCount * 15 * locationFactor;
        } else if (item.runtimeType == SpecializedCourse) {
          cost = item.unitCount * 25 * locationFactor;
        }
        totalCost += cost;
      }
    }

    return totalCost;
  }
}
