import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_calculator_app/pages/calculator/View-Model/calculator_view_model.dart';
import 'package:mobx_calculator_app/pages/calculator/widget/myContainer.dart';
import 'package:mobx_calculator_app/pages/home/View/home_part.dart';

part 'calculator_view.dart';

final calculatorView = CalculatorViewModel();

extension on CalculatorView {
  AppBar _appBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      shadowColor: Colors.transparent,
      automaticallyImplyLeading: false,
      centerTitle: true,
      title: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(17),
          color: Color.fromARGB(255, 25, 42, 58),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
                onPressed: () {
                  calculatorView.setDarkMode(false);
                },
                icon: Icon(Icons.light_mode)),
            IconButton(
                onPressed: () {
                  calculatorView.setDarkMode(true);
                },
                icon: Icon(Icons.dark_mode_outlined))
          ],
        ),
      ),
    );
  }

  Container _container() {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 53, 66, 78),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(17),
          topRight: Radius.circular(17),
        ),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              myContainer(
                text: "AC",
                color: Colors.greenAccent,
                function: calculatorView.reset(),
              ),
              SizedBox(
                width: 20,
              ),
              myContainer(
                  text: "+/-", color: Colors.greenAccent, function: () {}),
              SizedBox(
                width: 20,
              ),
              myContainer(
                text: "%",
                color: Colors.greenAccent,
                function: () {},
              ),
              SizedBox(
                width: 20,
              ),
              myContainer(
                text: "÷",
                color: Colors.red,
                function: calculatorView.divide(calculatorView.newNumber),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              myContainer(
                text: "7",
                color: Colors.white,
                function: calculatorView.setNewNumber(7),
              ),
              SizedBox(
                width: 20,
              ),
              myContainer(
                text: "8",
                color: Colors.white,
                function: calculatorView.setNewNumber(8),
              ),
              SizedBox(
                width: 20,
              ),
              myContainer(
                text: "9",
                color: Colors.white,
                function: calculatorView.setNewNumber(9),
              ),
              SizedBox(
                width: 20,
              ),
              myContainer(
                text: "X",
                color: Colors.red,
                function: calculatorView.impact(calculatorView.newNumber),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              myContainer(
                text: "4",
                color: Colors.white,
                function: calculatorView.setNewNumber(4),
              ),
              SizedBox(
                width: 20,
              ),
              myContainer(
                text: "5",
                color: Colors.white,
                function: calculatorView.setNewNumber(5),
              ),
              SizedBox(
                width: 20,
              ),
              myContainer(
                text: "6",
                color: Colors.white,
                function: calculatorView.setNewNumber(6),
              ),
              SizedBox(
                width: 20,
              ),
              myContainer(
                  text: "-",
                  color: Colors.red,
                  function: calculatorView.increment(calculatorView.newNumber)),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              myContainer(
                text: "1",
                color: Colors.white,
                function: calculatorView.setNewNumber(1),
              ),
              SizedBox(
                width: 20,
              ),
              myContainer(
                text: "2",
                color: Colors.white,
                function: calculatorView.setNewNumber(2),
              ),
              SizedBox(
                width: 20,
              ),
              myContainer(
                text: "3",
                color: Colors.white,
                function: calculatorView.setNewNumber(3),
              ),
              SizedBox(
                width: 20,
              ),
              myContainer(
                  text: "+",
                  color: Colors.white,
                  function: calculatorView.increment(calculatorView.newNumber)),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              myContainer(
                text: "⏎",
                color: Colors.white,
                function: () {},
              ),
              SizedBox(
                width: 20,
              ),
              myContainer(
                text: "0",
                color: Colors.white,
                function: calculatorView.setNewNumber(0),
              ),
              SizedBox(
                width: 20,
              ),
              myContainer(
                text: ".",
                color: Colors.white,
                function: () {},
              ),
              SizedBox(
                width: 20,
              ),
              myContainer(text: "=", color: Colors.red, function: () {}),
            ],
          ),
          SizedBox(
            height: 15,
          )
        ],
      ),
    );
  }

  Observer _observer() {
    return Observer(
      builder: (_) {
        return TextField(
          onChanged: (value) {
            calculatorView.setText(value);
          },
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: calculatorView.newNumber.toString(),
            hintStyle: TextStyle(
              fontSize: 50,
              color: Colors.white,
            ),
          ),
        );
      },
    );
  }
}
