import 'package:quiz_app/question.dart';

class QuizBrain{

  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question(questionText: "Taj mahal is located in Rajasthan", questionAnswer: false),
    Question(questionText: "Approx one quarter of human bones are lying in human feet", questionAnswer: true),
    Question(questionText: "A slug's blood is green", questionAnswer: true),
    Question(questionText: "A humans blood is black", questionAnswer: false),
  ];

  void nextQuestion(){
    if(_questionNumber < _questionBank.length - 1){
      _questionNumber++;
    }
  }


  String getQuestionText(){
    return _questionBank[_questionNumber].questionText.toString();
  }

  bool getQuestionAnswer(){
    return _questionBank[_questionNumber].questionAnswer!;
  }

 bool finished(){
    if(_questionNumber >= _questionBank.length - 1){
      return true;
    }else{
      return false;
    }
  }

  void reset(){
    _questionNumber = 0;
  }

}