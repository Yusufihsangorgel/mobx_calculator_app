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
  void setNewNumber(double value) {
    newNumber = value;
    print("şuanki yeni rakam : $newNumber");
  }

  @observable
  double number = 0;

  @action
  void setText(var value) {
    number = value;
  }

  @action
  void increment(double value) {
    number += value;
  }

  @action
  void decriment(double value) {
    number -= value;
  }

  @action
  void reset() {
    number = 0;
  }

  @action
  void impact(double value) {
    number *= value;
  }

  @action
  void divide(double value) {
    number /= value;
  }
}
