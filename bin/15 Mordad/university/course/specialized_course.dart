import 'course.dart';
class SpecializedCourse extends Course {
  @override
   int unitFactor = 2;

  SpecializedCourse({
    required super.title,
    required super.id,
    required super.unitCount,
  });
}
