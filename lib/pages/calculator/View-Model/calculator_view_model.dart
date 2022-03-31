import 'package:mobx/mobx.dart';
import 'package:math_expressions/math_expressions.dart';
part 'calculator_view_model.g.dart';

class CalculatorViewModel = _CalculatorViewModelBase with _$CalculatorViewModel;

abstract class _CalculatorViewModelBase with Store {
  Parser parser = Parser();
  ContextModel cm = ContextModel();
  @observable
  String userInput = '';

  @observable
  String result = '';

  @action
  void clean() {
    userInput = '';
  }

  @action
  void delete() {
    userInput = userInput.substring(0, userInput.length - 1);
  }

  @action
  void addUserInput(String inputChar) {
    userInput += inputChar;
  }

  @action
  void calculate() {
    final Expression exp = parser.parse(userInput);
    result = exp.evaluate(EvaluationType.REAL, cm).toString();
  }
}
