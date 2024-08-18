class Student {
  String name;
  int id;
  int location;

  Student(this.name, this.id, this.location);

  @override
  String toString() {
    return 'Student{name: $name, id: $id}';
  }
}
