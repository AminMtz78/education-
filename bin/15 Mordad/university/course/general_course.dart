import 'course.dart';

class GeneralCourse extends Course {

  @override
   int unitFactor = 1;

  GeneralCourse({
    required super.title,
    required super.id,
    required super.unitCount,
  });
}
