import 'question.dart';
class QuizBrain {

  int _questionNumber = 0;

  //TODO 1: ปรับเปลี่ยนหรือเพิ่มชุดคำถามใน questionBank ให้มีอย่างน้อย 5 คำถาม
  List<Question> _questionBank=[
    Question(q: 'เครื่องมือเอเลี่ยนประหลาด คือ Omnitrix ของ BEN10', a: true),
    Question(q: 'ชีวิตมันเศร้าแต่ถ้าเราอยู่ด้วยกันจะมีความสุข \n คำพูดดังกล่าวจริงหรือเท็จ', a: true),
    Question(q: 'ทำงาน ทำงาน ทำงาน \n คำพูดดังกล่าวเป็นของชัชชาติ ', a: true),
    Question(q: "สัจธรรมแปลเป็นภาษาอังกฤษว่า Animal Will Do" , a: false),
    Question(q: "ผมง่วงแล้วครับ", a: true ),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length-1) {
      _questionNumber++;
    }
  }

  String? getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool? getQuestionAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }

}