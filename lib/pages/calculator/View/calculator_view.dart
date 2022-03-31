part of 'calculator_part.dart';

class CalculatorView extends StatelessWidget {
  const CalculatorView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 300),
            child: _observer(),
          ),
          const SizedBox(
            height: 20,
          ),
          _container(),
        ],
      ),
    );
  }
}
