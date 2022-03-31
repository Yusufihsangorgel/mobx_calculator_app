part of 'calculator_part.dart';

final calculatorView = CalculatorViewModel();

class CalculatorView extends StatelessWidget {
  const CalculatorView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Observer(builder: (_) {
                return Container(
                  color: Colors.black,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _Lcontainer(),
                      _container(),
                    ],
                  ),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
