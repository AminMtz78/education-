import 'course.dart';

class SpecializedCourse extends Course {
  @override
  int unitFactor = 2;

  SpecializedCourse(
    super.title,
    super.id,
    super.unitCount,
  );
}
