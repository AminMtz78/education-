import '../student.dart';

abstract class Course {
  String title;
  int id;
  int unitCount;
  int unitFactor = 0;
  final List<Student> students = [];

  Course(this.title, this.id, this.unitCount);

  void addStudentToCourse({required Student student}){
    if (students.any((element) => element.id == student.id)){
      print('The student has already registered in the class');
    }
    else  {
      students.add(student);
    }


  }

  bool isStudentRegistered ({required int studentId}){
    return students.any((element) => element.id == studentId);
  }


  


}