// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calculator_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CalculatorViewModel on _CalculatorViewModelBase, Store {
  final _$isDarkModeEnabledAtom =
      Atom(name: '_CalculatorViewModelBase.isDarkModeEnabled');

  @override
  bool get isDarkModeEnabled {
    _$isDarkModeEnabledAtom.reportRead();
    return super.isDarkModeEnabled;
  }

  @override
  set isDarkModeEnabled(bool value) {
    _$isDarkModeEnabledAtom.reportWrite(value, super.isDarkModeEnabled, () {
      super.isDarkModeEnabled = value;
    });
  }

  final _$newNumberAtom = Atom(name: '_CalculatorViewModelBase.newNumber');

  @override
  double get newNumber {
    _$newNumberAtom.reportRead();
    return super.newNumber;
  }

  @override
  set newNumber(double value) {
    _$newNumberAtom.reportWrite(value, super.newNumber, () {
      super.newNumber = value;
    });
  }

  final _$numberAtom = Atom(name: '_CalculatorViewModelBase.number');

  @override
  double get number {
    _$numberAtom.reportRead();
    return super.number;
  }

  @override
  set number(double value) {
    _$numberAtom.reportWrite(value, super.number, () {
      super.number = value;
    });
  }

  final _$_CalculatorViewModelBaseActionController =
      ActionController(name: '_CalculatorViewModelBase');

  @override
  void setDarkMode(bool value) {
    final _$actionInfo = _$_CalculatorViewModelBaseActionController.startAction(
        name: '_CalculatorViewModelBase.setDarkMode');
    try {
      return super.setDarkMode(value);
    } finally {
      _$_CalculatorViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setNewNumber(double value) {
    final _$actionInfo = _$_CalculatorViewModelBaseActionController.startAction(
        name: '_CalculatorViewModelBase.setNewNumber');
    try {
      return super.setNewNumber(value);
    } finally {
      _$_CalculatorViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setText(dynamic value) {
    final _$actionInfo = _$_CalculatorViewModelBaseActionController.startAction(
        name: '_CalculatorViewModelBase.setText');
    try {
      return super.setText(value);
    } finally {
      _$_CalculatorViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic increment(double value) {
    final _$actionInfo = _$_CalculatorViewModelBaseActionController.startAction(
        name: '_CalculatorViewModelBase.increment');
    try {
      return super.increment(value);
    } finally {
      _$_CalculatorViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic decriment(double value) {
    final _$actionInfo = _$_CalculatorViewModelBaseActionController.startAction(
        name: '_CalculatorViewModelBase.decriment');
    try {
      return super.decriment(value);
    } finally {
      _$_CalculatorViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic reset() {
    final _$actionInfo = _$_CalculatorViewModelBaseActionController.startAction(
        name: '_CalculatorViewModelBase.reset');
    try {
      return super.reset();
    } finally {
      _$_CalculatorViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic impact(double value) {
    final _$actionInfo = _$_CalculatorViewModelBaseActionController.startAction(
        name: '_CalculatorViewModelBase.impact');
    try {
      return super.impact(value);
    } finally {
      _$_CalculatorViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic divide(double value) {
    final _$actionInfo = _$_CalculatorViewModelBaseActionController.startAction(
        name: '_CalculatorViewModelBase.divide');
    try {
      return super.divide(value);
    } finally {
      _$_CalculatorViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isDarkModeEnabled: ${isDarkModeEnabled},
newNumber: ${newNumber},
number: ${number}
    ''';
  }
}
