import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_calculator_app/pages/calculator/View-Model/calculator_view_model.dart';
import 'package:mobx_calculator_app/pages/home/View/home_part.dart';

void main() {
  runApp(const MyApp());
}

final calculatorView = CalculatorViewModel();

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return MaterialApp(
        theme: ThemeData.light(),
        darkTheme: ThemeData.dark().copyWith(
          appBarTheme: AppBarTheme(color: Color(0xFF15202B)),
          scaffoldBackgroundColor: Color(0xFF15202B),
        ),
        themeMode:
            calculatorView.isDarkModeEnabled ? ThemeMode.dark : ThemeMode.light,
        home: HomeView(),
      );
    });
  }
}
