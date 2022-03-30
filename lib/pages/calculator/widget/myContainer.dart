import 'package:flutter/material.dart';
import 'package:mobx_calculator_app/pages/calculator/View-Model/calculator_view_model.dart';

class myContainer extends StatelessWidget {
  final calculatorView = CalculatorViewModel();
  final String text;
  final Color color;
  var function;

  myContainer(
      {Key? key,
      required this.text,
      required this.color,
      required this.function})
      : super(key: key);

  final ButtonStyle flatButtonStyle = TextButton.styleFrom(
    fixedSize: Size.square(85),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(0.0),
    ),
    padding: const EdgeInsets.all(22.0),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(17),
        color: Colors.black,
      ),
      child: TextButton(
          style: flatButtonStyle,
          onPressed: () {
            function();
          },
          child: Text(
            text,
            style: TextStyle(
                fontSize: 25.0, fontWeight: FontWeight.normal, color: color),
          )),
    );
  }
}
