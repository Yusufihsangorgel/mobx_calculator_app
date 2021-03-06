import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_calculator_app/pages/calculator/View-Model/calculator_view_model.dart';
import 'package:mobx_calculator_app/pages/calculator/widget/myContainer.dart';

part 'calculator_view.dart';

extension on CalculatorView {
  Column _column() {
    return Column(
      children: [
        const SizedBox(
          height: 15,
        ),
        Row(
          children: [
            const SizedBox(
              width: 20,
            ),
            myContainer(
              text: "AC",
              color: Colors.greenAccent,
              onTap: calculatorView.clean,
            ),
            const SizedBox(
              width: 20,
            ),
            myContainer(
              text: "+/-",
              color: Colors.greenAccent,
              onTap: () {},
            ),
            const SizedBox(
              width: 20,
            ),
            myContainer(
              text: "%",
              color: Colors.greenAccent,
              onTap: () => calculatorView.addUserInput('%'),
            ),
            const SizedBox(
              width: 20,
            ),
            myContainer(
              text: "÷",
              color: Colors.red,
              onTap: () => calculatorView.addUserInput('/'),
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          children: [
            const SizedBox(
              width: 20,
            ),
            myContainer(
                text: "7",
                color: Colors.white,
                onTap: () => calculatorView.addUserInput('7')),
            const SizedBox(
              width: 20,
            ),
            myContainer(
                text: "8",
                color: Colors.white,
                onTap: () => calculatorView.addUserInput('8')),
            const SizedBox(
              width: 20,
            ),
            myContainer(
                text: "9",
                color: Colors.white,
                onTap: () => calculatorView.addUserInput('9')),
            const SizedBox(
              width: 20,
            ),
            myContainer(
                text: "X",
                color: Colors.red,
                onTap: () => calculatorView.addUserInput('*')),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          children: [
            const SizedBox(
              width: 20,
            ),
            myContainer(
                text: "4",
                color: Colors.white,
                onTap: () => calculatorView.addUserInput('4')),
            const SizedBox(
              width: 20,
            ),
            myContainer(
                text: "5",
                color: Colors.white,
                onTap: () => calculatorView.addUserInput('5')),
            const SizedBox(
              width: 20,
            ),
            myContainer(
                text: "6",
                color: Colors.white,
                onTap: () => calculatorView.addUserInput('6')),
            const SizedBox(
              width: 20,
            ),
            myContainer(
                text: "-",
                color: Colors.red,
                onTap: () => calculatorView.addUserInput('-')),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          children: [
            const SizedBox(
              width: 20,
            ),
            myContainer(
              text: "1",
              color: Colors.white,
              onTap: () => calculatorView.addUserInput('1'),
            ),
            const SizedBox(
              width: 20,
            ),
            myContainer(
              text: "2",
              color: Colors.white,
              onTap: () => calculatorView.addUserInput('2'),
            ),
            const SizedBox(
              width: 20,
            ),
            myContainer(
              text: "3",
              color: Colors.white,
              onTap: () => calculatorView.addUserInput('3'),
            ),
            const SizedBox(
              width: 20,
            ),
            myContainer(
                text: "+",
                color: Colors.white,
                onTap: () => calculatorView.addUserInput('+')),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          children: [
            const SizedBox(
              width: 20,
            ),
            myContainer(
              text: "⏎",
              color: Colors.white,
              onTap: calculatorView.delete,
            ),
            const SizedBox(
              width: 20,
            ),
            myContainer(
              text: "0",
              color: Colors.white,
              onTap: () => calculatorView.addUserInput('0'),
            ),
            const SizedBox(
              width: 20,
            ),
            myContainer(
              text: ".",
              color: Colors.white,
              onTap: () => calculatorView.addUserInput('.'),
            ),
            const SizedBox(
              width: 20,
            ),
            myContainer(
                text: "=", color: Colors.red, onTap: calculatorView.calculate),
          ],
        ),
        const SizedBox(
          height: 15,
        )
      ],
    );
  }

  // ignore: non_constant_identifier_names
  Container _Lcontainer() {
    return Container(
      child: Container(
        padding: const EdgeInsets.all(20),
        alignment: Alignment.centerLeft,
        child: Text(
          calculatorView.userInput,
          style: const TextStyle(fontSize: 35, color: Colors.redAccent),
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Container _Fcontainer() {
    return Container(
      padding: const EdgeInsets.all(25),
      alignment: Alignment.centerRight,
      child: Text(
        calculatorView.result,
        style: const TextStyle(fontSize: 70, color: Colors.lightGreen),
      ),
    );
  }
}
