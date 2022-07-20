import 'package:flutter/material.dart';

class TablaIMC extends StatelessWidget {
  const TablaIMC({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      children: const [
        TableRow(children: [Text('IMC'), Text('Composición corporal')]),
        TableRow(children: [Text('IMC'), Text('Composición corporal')]),
      ],
    );
  }
}
