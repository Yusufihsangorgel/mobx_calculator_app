part of 'calculator_part.dart';

class CalculatorView extends StatelessWidget {
  const CalculatorView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final calculatorView = CalculatorViewModel();
    return Scaffold(
      appBar: _appBar(),
      body: Observer(builder: (_) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 300),
              child: _textField(),
            ),
            const SizedBox(
              height: 20,
            ),
            _container(),
          ],
        );
      }),
    );
  }
}
