import 'package:flutter/material.dart';

class myContainer extends StatelessWidget {
  final String text;
  final Color color;
  final void Function() onTap;

  myContainer(
      {Key? key, required this.text, required this.color, required this.onTap})
      : super(key: key);

  final ButtonStyle flatButtonStyle = TextButton.styleFrom(
    fixedSize: const Size.square(85),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(0.0),
    ),
    padding: const EdgeInsets.all(22.0),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 10,
      width: MediaQuery.of(context).size.width / 5.5,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(17),
        color: Colors.black,
      ),
      child: TextButton(
          style: flatButtonStyle,
          onPressed: onTap,
          child: Text(
            text,
            style: TextStyle(
                fontSize: 15, fontWeight: FontWeight.normal, color: color),
          )),
    );
  }
}
