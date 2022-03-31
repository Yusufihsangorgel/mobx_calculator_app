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
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark().copyWith(
        appBarTheme: const AppBarTheme(color: Color(0xFF15202B)),
        scaffoldBackgroundColor: const Color(0xFF15202B),
      ),
      themeMode: ThemeMode.dark,
      home: HomeView(),
    );
  }
}
