

// انشأت هاد class لانه صار عندي في object داخل ال object الاساسي

class Subject{

  int id ;
  int score;

  Subject({required this.id,required this.score});

  factory Subject.fromJson(Map<String,dynamic> parseJson){
    return Subject(
        id: parseJson['id'],
        score: parseJson['score']
    );
  }

  @override
  String toString() {
    // TODO: implement toString
    return 'id :$id,score:$score';
  }

}