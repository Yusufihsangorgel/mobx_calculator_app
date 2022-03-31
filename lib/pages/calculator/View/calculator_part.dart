import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_calculator_app/pages/calculator/View-Model/calculator_view_model.dart';
import 'package:mobx_calculator_app/pages/calculator/widget/myContainer.dart';
import 'package:mobx_calculator_app/pages/home/View/home_part.dart';

part 'calculator_view.dart';

extension on CalculatorView {
  AppBar _appBar() {
    return AppBar(
        //backgroundColor: Colors.transparent,
        //shadowColor: Colors.transparent,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(calculatorView.userInput));
  }

/* Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(17),
              color: Color.fromARGB(255, 25, 42, 58),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.light_mode)),
                IconButton(
                    onPressed: () {}, icon: Icon(Icons.dark_mode_outlined))
              ],
            ),
          ),*/
  Container _container() {
    return Container(
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 53, 66, 78),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(17),
          topRight: Radius.circular(17),
        ),
      ),
      child: Column(
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
                  text: "=",
                  color: Colors.red,
                  onTap: calculatorView.calculate),
            ],
          ),
          const SizedBox(
            height: 15,
          )
        ],
      ),
    );
  }

  Container _Lcontainer() {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            child: Text(
              calculatorView.userInput,
              style: const TextStyle(fontSize: 35, color: Colors.redAccent),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(25),
            alignment: Alignment.centerRight,
            child: Text(
              calculatorView.result,
              style: const TextStyle(fontSize: 70, color: Colors.lightGreen),
            ),
          ),
        ],
      ),
    );
  }
}
