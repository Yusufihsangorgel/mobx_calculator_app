import 'package:mobx/mobx.dart';
part 'calculator_view_model.g.dart';

class CalculatorViewModel = _CalculatorViewModelBase with _$CalculatorViewModel;

abstract class _CalculatorViewModelBase with Store {
  @observable
  bool isDarkModeEnabled = true;

  @action
  void setDarkMode(bool value) {
    isDarkModeEnabled = value;
    print("çalıştım knk aha şuanki değeri bu $isDarkModeEnabled");
  }

  @observable
  double newNumber = 0.0;

  @action
  setNewNumber(double value) {
    newNumber = value;
  }

  @observable
  double number = 0;

  @action
  setText(var value) {
    number = value;
  }

  @action
  increment(double value) {
    number += value;
  }

  @action
  decriment(double value) {
    number -= value;
  }

  @action
  reset() {
    number = 0;
  }

  @action
  impact(double value) {
    number *= value;
  }

  @action
  divide(double value) {
    number /= value;
  }
}
