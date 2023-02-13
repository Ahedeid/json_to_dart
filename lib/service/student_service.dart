import 'package:json_to_dart/service/subject_service.dart';

class Student {
  String id;

  String name;

  int mark;

  List<String> subjects;

  Subject subject;

  Student(
      {required this.id,
      required this.mark,
      required this.name,
      required this.subjects,
      required this.subject});

  factory Student.fromJson(Map<String, dynamic> parsesJson) {
    return Student(
        id: parsesJson['id'],
        mark: parsesJson['mark'],
        name: parsesJson['name'],
        // وهنا استدعينا ال function الي انشأتها تحت وضفت الها ال list
        subjects: toList(parsesJson['subjects']),
        // هنا بما انه الاشي لي عندي عبارة عن object ف لازم اعمله بهاد الشكل عشان اعرضه
        subject: Subject.fromJson(parsesJson['subject']));
  }

  // وهنا التحويل ل string
  @override
  String toString() {
    // TODO: implement toString
    return 'name:$name,id:$id,mark:$mark,subjects:$subjects,subject:$subject';
  }

  // هنا عملنا تحويل ل list

  static List<String> toList(List<dynamic> list) {
    return List<String>.from(list);
  }
}
