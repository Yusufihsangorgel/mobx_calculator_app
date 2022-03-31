// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calculator_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_ant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CalculatorViewModel on _CalculatorViewModelBase, Store {
  final _$userInputAtom = Atom(name: '_CalculatorViewModelBase.userInput');

  @override
  String get userInput {
    _$userInputAtom.reportRead();
    return super.userInput;
  }

  @override
  set userInput(String value) {
    _$userInputAtom.reportWrite(value, super.userInput, () {
      super.userInput = value;
    });
  }

  final _$resultAtom = Atom(name: '_CalculatorViewModelBase.result');

  @override
  String get result {
    _$resultAtom.reportRead();
    return super.result;
  }

  @override
  set result(String value) {
    _$resultAtom.reportWrite(value, super.result, () {
      super.result = value;
    });
  }

  final _$_CalculatorViewModelBaseActionController =
      ActionController(name: '_CalculatorViewModelBase');

  @override
  void clean() {
    final _$actionInfo = _$_CalculatorViewModelBaseActionController.startAction(
        name: '_CalculatorViewModelBase.clean');
    try {
      return super.clean();
    } finally {
      _$_CalculatorViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void delete() {
    final _$actionInfo = _$_CalculatorViewModelBaseActionController.startAction(
        name: '_CalculatorViewModelBase.delete');
    try {
      return super.delete();
    } finally {
      _$_CalculatorViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addUserInput(String inputChar) {
    final _$actionInfo = _$_CalculatorViewModelBaseActionController.startAction(
        name: '_CalculatorViewModelBase.addUserInput');
    try {
      return super.addUserInput(inputChar);
    } finally {
      _$_CalculatorViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void calculate() {
    final _$actionInfo = _$_CalculatorViewModelBaseActionController.startAction(
        name: '_CalculatorViewModelBase.calculate');
    try {
      return super.calculate();
    } finally {
      _$_CalculatorViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
userInput: ${userInput},
result: ${result}
    ''';
  }
}
