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
                // ignore: avoid_unnecessary_containers
                return Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _Lcontainer(),
                      _Fcontainer(),
                    ],
                  ),
                );
              }),
            ),
            Expanded(
                flex: 2,
                child: Observer(builder: (_) {
                  return Container(
                      width: MediaQuery.of(context).size.width / 1,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 53, 66, 78),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(17),
                          topRight: Radius.circular(17),
                        ),
                      ),
                      child: _column());
                }))
          ],
        ),
      ),
    );
  }
}
