import 'package:flutter/material.dart';

class BotonesSexo extends StatelessWidget {
  const BotonesSexo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
            onPressed: () {},
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                Icon(Icons.male_rounded),
                Text(
                  'HOMBRE',
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
        ),
        Expanded(
          child: ElevatedButton(
            onPressed: () {},
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                Icon(Icons.female_rounded),
                Text(
                  'MUJER',
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
