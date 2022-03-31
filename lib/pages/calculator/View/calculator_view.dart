part of 'calculator_part.dart';

final calculatorView = CalculatorViewModel();

class CalculatorView extends StatelessWidget {
  const CalculatorView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Observer(builder: (_) {
                return Container(
                  color: Colors.black,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _Lcontainer(),
                      SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: _container()),
                    ],
                  ),
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}


/* */