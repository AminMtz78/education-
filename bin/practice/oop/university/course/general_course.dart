import 'course.dart';

class GeneralCourse extends Course {
  @override
  int unitFactor = 1;

  GeneralCourse(
    super.title,
    super.id,
    super.unitCount,
  );
}
