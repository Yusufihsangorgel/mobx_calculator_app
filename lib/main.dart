import 'package:flutter/material.dart';
import 'package:mobx_calculator_app/pages/home/View/home_part.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(color: Color(0xFF15202B)),
        scaffoldBackgroundColor: Color(0xFF15202B),
      ),
      themeMode: ThemeMode.dark,
      // calculatorView.isDarkModeEnabled ? ThemeMode.dark : ThemeMode.light,
      home: HomeView(),
    );
  }
}
