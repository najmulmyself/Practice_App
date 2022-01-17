import 'dart:ffi';

class Question {
  String? questionText;
  bool? questionAnswear;

  Question({String? q, bool? a}) {
    questionText = q;
    questionAnswear = a;
  }
}

